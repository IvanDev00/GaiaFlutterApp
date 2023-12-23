import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup25),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(children: [
                      _buildSplashScreenStack(context),
                      SizedBox(height: 160.v),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGreenLogoPlain,
                                height: 109.v,
                                width: 198.h,
                                alignment: Alignment.center),
                            SizedBox(height: 109.v),
                            _buildTenStack(context)
                          ])
                    ]))))));
  }

  /// Section Widget
  Widget _buildSplashScreenStack(BuildContext context) {
    return SizedBox(
        height: 210.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup16,
              height: 209.v,
              width: 166.h,
              alignment: Alignment.centerRight),
          CustomImageView(
              imagePath: ImageConstant.imgGroup7,
              height: 210.v,
              width: 256.h,
              alignment: Alignment.centerLeft)
        ]));
  }

  /// Section Widget
  Widget _buildTenStack(BuildContext context) {
    return SizedBox(
        height: 267.v,
        width: 379.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup11,
              height: 262.v,
              width: 337.h,
              alignment: Alignment.centerLeft),
          CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 136.v,
              width: 100.h,
              alignment: Alignment.bottomRight)
        ]));
  }
}
