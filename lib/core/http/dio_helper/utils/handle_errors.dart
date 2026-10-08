import 'dart:convert';
import 'dart:developer';

import 'package:base_structure/core/constants/app_constants.dart';
import 'package:base_structure/core/helpers/global_context.dart';
import 'package:base_structure/core/helpers/global_state.dart';
import 'package:base_structure/features/auth/presentation/pages/login/login_imports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:base_structure/core/errors/custom_error.dart';
import 'package:base_structure/core/errors/not_found_error.dart';
import 'package:base_structure/core/errors/unauthorized_error.dart';
import 'package:base_structure/core/helpers/app_snack_bar_service.dart';
import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class HandleErrors {
  void catchError({Response? response, required Function(dynamic) errorFunc}) {
    if (response == null) {
      log("failed response Check Server");
      AppSnackBar.showSimpleToast(msg: "Check Server");
    } else {
      log("failed response ${response.statusCode}");
      log("failed response ${response.data}");
      var data = response.data;
      try {
        if (data is String) data = json.decode(response.data);
        String message = "";
        message = errorFunc(data).toString();
        switch (response.statusCode) {
          case 503:
          case 404:
            AppSnackBar.showErrorSnackBar(error: CustomError(msg: message));
            if (message == "Not Authorized") {
              _tokenExpired(message);
            }
            break;
          case 500:
            AppSnackBar.showErrorSnackBar(error: CustomError(msg: message));
            break;
          case 502:
            AppSnackBar.showErrorSnackBar(
                error: CustomError(msg: "check your request"));
            break;
          case 422:
          case 400:
            if (data["errors"] != null) {
              List<dynamic> errors = data["errors"];
              log("response errors $errors");
              List<String> lst =
              List<String>.from(data["errors"].map((e) => e["message"]));
              for (var e in lst) {
                AppSnackBar.showErrorSnackBar(error: CustomError(msg: e));
              }
            } else {
              AppSnackBar.showErrorSnackBar(error: CustomError(msg: message));
            }
            break;
          case 401:
          case 301:
          case 302:
            _tokenExpired(message);
            break;
        }
      } catch (e) {
        AppSnackBar.showErrorSnackBar(error: CustomError(msg: e.toString()));
      }
    }
  }

  MyResult<Response> statusError(
      Response response, Function(dynamic) errorFunc) {
    if (response.statusCode == 401) {
      return MyResult.isError(UnauthorizedError());
    } else if (response.statusCode == 404) {
      return MyResult.isError(NotFoundError());
    }
    return MyResult.isSuccess(response);
  }

  void _tokenExpired(String message) async {
    AppSnackBar.showErrorSnackBar(error: CustomError(msg: message));
    var context = getIt.get<GlobalContext>().context();
    context?.pushReplacement(LoginScreen.path);
    GlobalState.instance.set(ApplicationConstants.keyToken, null);
    getIt<SharedPreferences>().remove(ApplicationConstants.keyToken);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("user");
    Phoenix.rebirth(getIt<BuildContext>());
  }
}
