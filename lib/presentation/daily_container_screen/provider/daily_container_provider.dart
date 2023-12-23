import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/core/app_export.dart';
import 'package:gaiatestingprototype/presentation/daily_container_screen/models/daily_container_model.dart';

/// A provider class for the DailyContainerScreen.
///
/// This provider manages the state of the DailyContainerScreen, including the
/// current dailyContainerModelObj

// ignore_for_file: must_be_immutable
class DailyContainerProvider extends ChangeNotifier {
  DailyContainerModel dailyContainerModelObj = DailyContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
