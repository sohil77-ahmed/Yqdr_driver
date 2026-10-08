
import 'package:flutter/material.dart';
import 'package:base_structure/core/theme/colors/app_colors.dart';

class AppLightColors extends AppColors {


  @override
  Color get primary => const Color(0xFF703726);

  @override
  Color get secondary => const Color.fromRGBO(187, 114, 82, 0.1);

  @override
  Color get white => Colors.white;

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get appBarColor => const Color(0xFF703726);

  @override
  Color get black => Colors.black;

  @override
  Color get blackOpacity => Colors.black45;

  @override
  Color get grey => Colors.grey;

  @override
  Color get red => Colors.red;

  @override
  Color get greyWhite => Colors.grey.withOpacity(0.2);

  @override
  Color get disableGray=> const Color(0xFFCBCBCB);

  @override
  Color get brown=> const Color(0xffBB7252);

  @override
  Color get green=>  Colors.green;

}