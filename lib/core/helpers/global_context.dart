import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import 'di.dart';

@lazySingleton
class GlobalContext {
  BuildContext? context() =>
      getIt.get<GoRouter>().configuration.navigatorKey.currentContext;
}
