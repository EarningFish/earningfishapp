import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../theme/theme_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';

class Util {


  static void fieldFocusChange(BuildContext context , FocusNode current , FocusNode  nextFocus ){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  static toastMessage(String message, BuildContext context){
    Fluttertoast.showToast(
      msg: message ,
      backgroundColor:  appTheme.black900 ,
      textColor:  appTheme.whiteA700,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 1,
    );

  }


  static toastMessageCenter(String message){
    Fluttertoast.showToast(
      msg: message ,
      backgroundColor: appTheme.black900,
      gravity: ToastGravity.CENTER,
      toastLength: Toast.LENGTH_LONG,
      textColor:  appTheme.whiteA700,
    );
  }

  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          reverseAnimationCurve: Curves.easeOut,
          flushbarPosition: FlushbarPosition.TOP,
          positionOffset: 20,
          borderRadius: BorderRadius.circular(8),
          icon: const Icon(Icons.error),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          padding: const EdgeInsets.all(10),
          message: message,
          duration: const Duration(seconds: 3),
          backgroundColor: Colors.red,
        )..show(context));
  }

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red, content: Text(message)));
  }

}