import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/core/app_export.dart';
import 'package:gaiatestingprototype/core/utils/validation_functions.dart';
import 'package:gaiatestingprototype/widgets/custom_outlined_button.dart';
import 'package:gaiatestingprototype/widgets/custom_text_form_field.dart';
import 'provider/login_provider.dart';
import 'package:gaiatestingprototype/presentation/forgot_password_screen_two_bottomsheet/forgot_password_screen_two_bottomsheet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      _buildLoginStack(context),
                      SizedBox(height: 3.v),
                      Text("lbl_house_of_gaia".tr,
                          style:
                              CustomTextStyles.titleMediumOnPrimaryContainer),
                      Text("msg_please_enter_your".tr,
                          style: CustomTextStyles.bodySmallOnPrimaryContainer),
                      SizedBox(height: 44.v),
                      _buildEmailSection(context),
                      SizedBox(height: 15.v),
                      _buildPasswordSection(context),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(right: 45.h),
                                  child: Text("msg_forgot_password".tr,
                                      style:
                                          CustomTextStyles.bodySmallPrimary)))),
                      SizedBox(height: 38.v),
                      CustomOutlinedButton(
                          text: "lbl_login".tr,
                          margin: EdgeInsets.only(left: 45.h, right: 44.h),
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginStack(BuildContext context) {
    return SizedBox(
        height: 407.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMobileLoginCuate,
              height: 249.adaptSize,
              width: 249.adaptSize,
              alignment: Alignment.bottomCenter),
          CustomImageView(
              imagePath: ImageConstant.imgGroup5,
              height: 87.v,
              width: 185.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 30.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVectorTeal30001,
              height: 199.v,
              width: 95.h,
              alignment: Alignment.topRight),
          CustomImageView(
              imagePath: ImageConstant.imgGroup6,
              height: 179.v,
              width: 110.h,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgVectorPrimary,
              height: 121.v,
              width: 98.h,
              alignment: Alignment.topRight)
        ]));
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 44.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_email_address".tr,
              style: CustomTextStyles.bodySmallOnPrimaryContainer),
          SizedBox(height: 2.v),
          Selector<LoginProvider, TextEditingController?>(
              selector: (context, provider) => provider.emailController,
              builder: (context, emailController, child) {
                return CustomTextFormField(
                    controller: emailController,
                    hintText: "msg_enter_your_email".tr,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 44.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("lbl_password".tr,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer)),
          SizedBox(height: 2.v),
          Consumer<LoginProvider>(builder: (context, provider, child) {
            return CustomTextFormField(
                controller: provider.passwordController,
                hintText: "msg_enter_your_password".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffix: InkWell(
                    onTap: () {
                      provider.changePasswordVisibility();
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgEye1,
                            height: 20.adaptSize,
                            width: 20.adaptSize))),
                suffixConstraints: BoxConstraints(maxHeight: 40.v),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: provider.isShowPassword,
                contentPadding:
                    EdgeInsets.only(left: 16.h, top: 9.v, bottom: 9.v));
          })
        ]));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [ForgotPasswordScreenTwoBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapTxtForgotPassword(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ForgotPasswordScreenTwoBottomsheet.builder(context),
        isScrollControlled: true);
  }

  /// Navigates to the dailyContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dailyContainerScreen,
    );
  }
}
