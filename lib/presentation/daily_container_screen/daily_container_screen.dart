import 'models/daily_container_model.dart';
import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/core/app_export.dart';
import 'package:gaiatestingprototype/presentation/daily_page/daily_page.dart';
import 'package:gaiatestingprototype/widgets/custom_bottom_app_bar.dart';
import 'package:gaiatestingprototype/widgets/custom_floating_button.dart';
import 'provider/daily_container_provider.dart';

class DailyContainerScreen extends StatefulWidget {
  const DailyContainerScreen({Key? key}) : super(key: key);

  @override
  DailyContainerScreenState createState() => DailyContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DailyContainerProvider(),
        child: DailyContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class DailyContainerScreenState extends State<DailyContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.dailyPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomAppBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 58,
                width: 58,
                backgroundColor: appTheme.teal700,
                child: CustomImageView(
                    imagePath: ImageConstant.imgPlus11,
                    height: 29.0.v,
                    width: 29.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Userprimary:
        return AppRoutes.dailyPage;
      case BottomBarEnum.Group34:
        return "/";
      case BottomBarEnum.Group35:
        return "/";
      case BottomBarEnum.Group36:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.dailyPage:
        return DailyPage();
      default:
        return DefaultWidget();
    }
  }
}
