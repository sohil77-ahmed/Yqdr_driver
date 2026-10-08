import 'package:base_structure/core/bloc/base_bloc/base_bloc.dart';
import 'package:base_structure/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:base_structure/core/constants/CustomButtonAnimation.dart';
import 'package:base_structure/core/constants/dimens.dart';
import 'package:base_structure/core/constants/gaps.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:base_structure/core/widgets/default_app_bar.dart';
import 'package:base_structure/features/orders/data/models/order_model/order_model.dart';
import 'package:base_structure/features/orders/domain/use_cases/get_orders_use_case.dart';
import 'package:base_structure/features/orders/presentaion/orders/widgets/orders_widgets_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'orders_screen.dart';
part 'orders_controller.dart';