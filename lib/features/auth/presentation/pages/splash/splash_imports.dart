
import 'dart:async';
import 'dart:io';

import 'package:base_structure/core/bloc/base_bloc/base_bloc.dart';
import 'package:base_structure/core/bloc/device_cubit/device_cubit.dart';
import 'package:base_structure/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:base_structure/core/constants/app_constants.dart';
import 'package:base_structure/core/constants/duration_constants.dart';
import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/helpers/global_state.dart';
import 'package:base_structure/core/helpers/utilities.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/auth/data/models/settings_model/settings_model.dart';
import 'package:base_structure/features/auth/data/models/terms_model/terms_model.dart';
import 'package:base_structure/features/auth/domain/usecases/settings_use_case.dart';
import 'package:base_structure/features/auth/presentation/pages/fixing/fixing_screen_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/login/login_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/onboarding/onboarding_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/splash/widgets/splash_widgets_imports.dart';
import 'package:base_structure/features/base/presentation/pages/home/home_imports.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash.dart';
part 'splash_controller.dart';