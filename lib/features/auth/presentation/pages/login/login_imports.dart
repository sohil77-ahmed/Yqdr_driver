import 'package:base_structure/core/bloc/base_bloc/base_bloc.dart';
import 'package:base_structure/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:base_structure/core/constants/app_constants.dart';
import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/helpers/global_state.dart';
import 'package:base_structure/core/helpers/utilities.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/features/auth/data/models/login_response_model/login_response_model.dart';
import 'package:base_structure/features/auth/data/models/terms_model/terms_model.dart';
import 'package:base_structure/features/auth/domain/entities/login_params.dart';
import 'package:base_structure/features/auth/domain/usecases/login_use_case.dart';
import 'package:base_structure/features/auth/presentation/pages/active_account/active_account_imports.dart';
import 'package:base_structure/features/auth/presentation/widgets/auth_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:base_structure/core/constants/CustomButtonAnimation.dart';
import 'package:base_structure/features/base/presentation/pages/home/home_imports.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/login_widgets_imports.dart';

part 'login.dart';
part 'login_controller.dart';