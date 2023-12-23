import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/core/app_export.dart';
import 'package:gaiatestingprototype/presentation/daily_page/models/daily_model.dart';

/// A provider class for the DailyPage.
///
/// This provider manages the state of the DailyPage, including the
/// current dailyModelObj
class DailyProvider extends ChangeNotifier {
  DailyModel dailyModelObj = DailyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
