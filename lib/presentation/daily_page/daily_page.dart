import 'models/daily_model.dart';
import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/core/app_export.dart';
import 'provider/daily_provider.dart';

// ignore_for_file: must_be_immutable
class DailyPage extends StatefulWidget {
  const DailyPage({Key? key})
      : super(
          key: key,
        );

  @override
  DailyPageState createState() => DailyPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DailyProvider(),
      child: DailyPage(),
    );
  }
}

class DailyPageState extends State<DailyPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildStatusSection(context),
                SizedBox(height: 33.v),
                Text(
                  "msg_graph_presentation".tr,
                  style: CustomTextStyles.titleMediumPrimary,
                ),
                SizedBox(
                  width: 196.h,
                  child: Text(
                    "msg_graphical_representation".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallBluegray300,
                  ),
                ),
                SizedBox(height: 28.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 54.h),
                  decoration: AppDecoration.fillOnPrimary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "lbl_daily".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: Column(
                          children: [
                            Text(
                              "lbl_current_week".tr,
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                            SizedBox(height: 1.v),
                            Container(
                              height: 2.v,
                              width: 44.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl_weekly".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl_monthly".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                _buildDataSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 38.v,
            width: 161.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "msg_daily_health_report".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "msg_latest_record_from".tr,
                    style: CustomTextStyles.bodySmallOnPrimary12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 128.v,
            width: 369.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 128.v,
                            width: 132.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 128.v,
                                    width: 132.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        14.h,
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.deepOrange300,
                                          appTheme.deepOrange300,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 26.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgUser,
                                          height: 45.v,
                                          width: 35.h,
                                        ),
                                        SizedBox(height: 8.v),
                                        Text(
                                          "lbl_pedometer".tr,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimary,
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "lbl_maximum_steps".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary,
                                        ),
                                        Text(
                                          "lbl_495_steps".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 128.v,
                            width: 132.h,
                            margin: EdgeInsets.only(left: 172.h),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 128.v,
                                    width: 132.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        14.h,
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.red300,
                                          appTheme.red300,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 29.h,
                                      top: 14.v,
                                      right: 29.h,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIcons8HeartWithPulse,
                                          height: 45.adaptSize,
                                          width: 45.adaptSize,
                                        ),
                                        SizedBox(height: 8.v),
                                        Text(
                                          "lbl_heart_rate".tr,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimary,
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "lbl_latest_01_05pm".tr,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 85.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.gradientBlueToBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgIcons8Sleep1,
                          height: 45.adaptSize,
                          width: 45.adaptSize,
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "lbl_sleep".tr,
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                        Text(
                          "lbl_7_h_35_mins".tr,
                          style: CustomTextStyles.bodySmallOnPrimary,
                        ),
                        Text(
                          "msg_10_10pm_06_45am".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.v),
                    child: Text(
                      "lbl_73bpm".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusSection(BuildContext context) {
    return SizedBox(
      height: 282.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTealBg,
            height: 259.v,
            width: 393.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(24.h, 29.v, 24.h, 213.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "lbl_hi_satoru".tr,
                            style: CustomTextStyles.titleMediumSemiBold,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIcons8WavingHandEmoji,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                            margin: EdgeInsets.only(left: 7.h),
                          ),
                        ],
                      ),
                      Text(
                        "lbl_dec_1_2023".tr,
                        style: CustomTextStyles.labelMediumMedium,
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgAvatar,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    radius: BorderRadius.circular(
                      17.h,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 2.v),
                  ),
                ],
              ),
            ),
          ),
          _buildWelcomeSection(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDataSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 7.v),
                Text(
                  "msg_total_steps_and".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 3.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 3.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueA200,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        bottom: 1.v,
                      ),
                      child: Text(
                        "lbl_pedometer".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        top: 1.v,
                        bottom: 3.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.teal30001,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 1.v,
                      ),
                      child: Text(
                        "lbl_sleep".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_2000".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_1600".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_1200".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_800".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 27.v),
                          Text(
                            "lbl_400".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_0".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 212.v,
                      width: 321.h,
                      margin: EdgeInsets.only(left: 3.h),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 211.v,
                              width: 321.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimary,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup54,
                            height: 199.v,
                            width: 305.h,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 34.h,
                    right: 6.h,
                  ),
                  child: _buildCalendarSection(
                    context,
                    sunText: "lbl_sun".tr,
                    monText: "lbl_mon".tr,
                    tueText: "lbl_tue".tr,
                    wedText: "lbl_wed".tr,
                    thursText: "lbl_thurs".tr,
                    friText: "lbl_fri".tr,
                    satText: "lbl_sat".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.v),
          Container(
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 12.v),
                Text(
                  "lbl_o2_ring".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(top: 3.v),
                        decoration: BoxDecoration(
                          color: appTheme.blueA200,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_oxygen_level".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          left: 13.h,
                          top: 3.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.pink600,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_pulse_rate".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.green600,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_o2_score".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_4_drop".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.amber400,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_3_drop".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 81.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_1200".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_800".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_400".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_0".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 212.v,
                      width: 321.h,
                      margin: EdgeInsets.only(left: 3.h),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 211.v,
                              width: 321.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimary,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 305.h,
                              margin: EdgeInsets.only(
                                left: 8.h,
                                top: 13.v,
                                right: 8.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup46,
                                    height: 199.v,
                                    width: 14.h,
                                  ),
                                  Spacer(
                                    flex: 20,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLightBulb,
                                    height: 82.v,
                                    width: 14.h,
                                    margin: EdgeInsets.only(top: 117.v),
                                  ),
                                  Spacer(
                                    flex: 19,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup46,
                                    height: 134.v,
                                    width: 14.h,
                                    margin: EdgeInsets.only(top: 65.v),
                                  ),
                                  Spacer(
                                    flex: 19,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup46,
                                    height: 134.v,
                                    width: 14.h,
                                    margin: EdgeInsets.only(top: 65.v),
                                  ),
                                  Spacer(
                                    flex: 21,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup46,
                                    height: 199.v,
                                    width: 14.h,
                                  ),
                                  Spacer(
                                    flex: 19,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLightBulb,
                                    height: 100.v,
                                    width: 14.h,
                                    margin: EdgeInsets.only(top: 99.v),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup46,
                                    height: 116.v,
                                    width: 14.h,
                                    margin: EdgeInsets.only(
                                      left: 29.h,
                                      top: 83.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 34.h,
                    right: 6.h,
                  ),
                  child: _buildCalendarSection(
                    context,
                    sunText: "lbl_sun".tr,
                    monText: "lbl_mon".tr,
                    tueText: "lbl_tue".tr,
                    wedText: "lbl_wed".tr,
                    thursText: "lbl_thurs".tr,
                    friText: "lbl_fri".tr,
                    satText: "lbl_sat".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCalendarSection(
    BuildContext context, {
    required String sunText,
    required String monText,
    required String tueText,
    required String wedText,
    required String thursText,
    required String friText,
    required String satText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          sunText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          monText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          tueText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          wedText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          thursText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          friText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          satText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }
}
