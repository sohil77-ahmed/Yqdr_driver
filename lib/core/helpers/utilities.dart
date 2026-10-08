import 'dart:io';

import 'package:base_structure/core/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di.dart';
import 'global_notification.dart';

@lazySingleton
class Utilities {
  String convertDigitsToLatin(String s) {
    var sb = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        //Arabic digits
        case '\u0660':
          sb.write('0');
          break;
        case '\u0661':
          sb.write('1');
          break;
        case '\u0662':
          sb.write('2');
          break;
        case '\u0663':
          sb.write('3');
          break;
        case '\u0664':
          sb.write('4');
          break;
        case '\u0665':
          sb.write('5');
          break;
        case '\u0666':
          sb.write('6');
          break;
        case '\u0667':
          sb.write('7');
          break;
        case '\u0668':
          sb.write('8');
          break;
        case '\u0669':
          sb.write('9');
          break;
        default:
          sb.write(s[i]);
          break;
      }
    }
    return sb.toString();
  }

  Future<void> handleFcmTopic(BuildContext context) async {
    bool? enableNotification = getIt<SharedPreferences>()
        .getBool(ApplicationConstants.keyEnableNotification);
    String? lang =
        getIt<SharedPreferences>().getString(ApplicationConstants.keyLanguage);
    var type = Platform.isAndroid;
    String subscribe = "";
    if (type) {
      if (lang == "ar") {
        subscribe = "DriverAndroidAr";
      } else if (lang == "en") {
        subscribe = "DriverAndroidEn";
      }
    } else {
      if (lang == "ar") {
        subscribe = "DriverIosAr";
      } else if (lang == "en") {
        subscribe = "DriverIosEn";
      }
    }

    if (!Platform.isAndroid) {
      String? apnsToken;
      for (int i = 0; i < 5; i++) {
        try {
          apnsToken = await GlobalNotification.messaging.getAPNSToken();
        } catch (_) {
          apnsToken = null;
        }
        if (apnsToken != null) break;
        await Future.delayed(Duration(seconds: 2 + i));
      }
      if (apnsToken == null) {
        debugPrint('APNS token not available, skipping FCM topic management');
        return;
      }
    }

    List<String> unSubscribe = [
      'DriverAndroidAr',
      'DriverAndroidEn',
      'DriverIosAr',
      'DriverIosEn'
    ];
    try {
      if (enableNotification == true) {
        for (final item in unSubscribe) {
          await GlobalNotification.messaging.unsubscribeFromTopic(item);
          debugPrint("========> unSubscribe $item successfully");
        }
        await GlobalNotification.messaging.subscribeToTopic(subscribe);
        debugPrint("========> subscribe $subscribe successfully");
      } else {
        for (final item in unSubscribe) {
          await GlobalNotification.messaging.unsubscribeFromTopic(item);
          debugPrint("========> unSubscribe $item successfully");
        }
      }
    } catch (e) {
      debugPrint('Error managing FCM topics: $e');
    }
  }
}
