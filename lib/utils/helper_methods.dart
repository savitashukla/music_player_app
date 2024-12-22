import 'package:flutter/foundation.dart';
import 'package:share_plus/share_plus.dart';

class HelperMethods
{

  customPrint(var data) async {
    try {
      if (kDebugMode) {
        print("$data");
      } else if (kReleaseMode) {
        // this is release mode
      }
    } catch (e) {
      debugPrint("$e");
    }
  }

  funShareS(String refCode) async {
    try {
      await Share.share(refCode);
    } catch (e) {
      return null;
    }
  }


  DateTime? loginClickTime;
  bool isRedundentClick(DateTime currentTime) {
    if (loginClickTime == null) {
      loginClickTime = currentTime;
    print('ProgressBarClick: showProgress first click');
      return false;
    }
    print('diff is ${currentTime.difference(loginClickTime!).inMilliseconds}');
    print('ProgressBarClick: showProgress diff');
    if (currentTime.difference(loginClickTime!).inMilliseconds <300 ) {
      // set this difference time in seconds
      return true;
    }

    loginClickTime = currentTime;
    return false;
  }
}