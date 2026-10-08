import 'package:base_structure/core/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

class AuthScaffold extends StatelessWidget {
  final bool hasAppBar;
  final String? appBarTitle;
  final Widget body;
  const AuthScaffold(
      {super.key,
      required this.body,
      this.appBarTitle,
      required this.hasAppBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: hasAppBar
          ? DefaultAppBar(
              title: appBarTitle ?? '',
            )
          : null,
      body: body,
    );
  }
}
