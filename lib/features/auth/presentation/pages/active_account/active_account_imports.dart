import 'dart:async';

import 'package:base_structure/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:base_structure/core/constants/app_constants.dart';
import 'package:base_structure/core/constants/dimens.dart';
import 'package:base_structure/core/constants/gaps.dart';
import 'package:base_structure/core/helpers/app_snack_bar_service.dart';
import 'package:base_structure/core/helpers/global_state.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/features/auth/data/models/login_response_model/login_response_model.dart';
import 'package:base_structure/features/auth/domain/entities/verify_otp_params.dart';
import 'package:base_structure/features/auth/domain/usecases/resend_otp_use_case.dart';
import 'package:base_structure/features/auth/domain/usecases/verify_otp_use_case.dart';
import 'package:base_structure/features/auth/presentation/widgets/auth_scaffold.dart';
import 'package:base_structure/features/base/presentation/pages/home/home_imports.dart';
import 'package:base_structure/res.dart';
import 'package:flutter/material.dart';
import 'package:base_structure/core/bloc/base_bloc/base_bloc.dart';
import 'package:base_structure/core/constants/CustomButtonAnimation.dart';

import 'package:base_structure/features/auth/presentation/widgets/auth_header_title_widget.dart';
import 'package:base_structure/features/auth/presentation/widgets/pin_field_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/active_account_widgets_imports.dart';

part 'active_account.dart';
part 'active_account_controller.dart';
