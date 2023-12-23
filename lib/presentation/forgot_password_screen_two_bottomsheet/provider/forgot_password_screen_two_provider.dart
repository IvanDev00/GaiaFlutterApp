import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/core/app_export.dart';
import 'package:gaiatestingprototype/presentation/forgot_password_screen_two_bottomsheet/models/forgot_password_screen_two_model.dart';

/// A provider class for the ForgotPasswordScreenTwoBottomsheet.
///
/// This provider manages the state of the ForgotPasswordScreenTwoBottomsheet, including the
/// current forgotPasswordScreenTwoModelObj
class ForgotPasswordScreenTwoProvider extends ChangeNotifier {
  ForgotPasswordScreenTwoModel forgotPasswordScreenTwoModelObj =
      ForgotPasswordScreenTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
