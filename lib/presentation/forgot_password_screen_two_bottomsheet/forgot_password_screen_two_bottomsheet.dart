import 'models/forgot_password_screen_two_model.dart';
import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/core/app_export.dart';
import 'provider/forgot_password_screen_two_provider.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreenTwoBottomsheet extends StatefulWidget {
  const ForgotPasswordScreenTwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordScreenTwoBottomsheetState createState() =>
      ForgotPasswordScreenTwoBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordScreenTwoProvider(),
      child: ForgotPasswordScreenTwoBottomsheet(),
    );
  }
}

class ForgotPasswordScreenTwoBottomsheetState
    extends State<ForgotPasswordScreenTwoBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 176.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Container(
        height: 3.v,
        width: 40.h,
        decoration: BoxDecoration(
          color: appTheme.blueGray100,
          borderRadius: BorderRadius.circular(
            1.h,
          ),
        ),
      ),
    );
  }
}
