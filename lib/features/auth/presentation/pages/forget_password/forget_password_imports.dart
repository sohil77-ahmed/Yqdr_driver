import 'package:base_structure/core/constants/dimens.dart';
import 'package:base_structure/core/constants/gaps.dart';
import 'package:base_structure/core/helpers/app_snack_bar_service.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/features/auth/domain/entities/forget_password_params.dart';
import 'package:base_structure/features/auth/domain/usecases/forget_password_use_case.dart';
import 'package:base_structure/features/auth/presentation/widgets/auth_scaffold.dart';
import 'package:base_structure/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:base_structure/core/bloc/base_bloc/base_bloc.dart';
import 'package:base_structure/core/constants/CustomButtonAnimation.dart';
import 'package:base_structure/features/auth/presentation/pages/forget_password/widgets/forget_password_widgets_imports.dart';
import 'package:base_structure/features/auth/presentation/widgets/auth_header_title_widget.dart';
import 'package:go_router/go_router.dart';



part 'forget_password.dart';
part 'forget_password_controller.dart';