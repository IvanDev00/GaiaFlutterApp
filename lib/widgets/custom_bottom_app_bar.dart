import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgUserPrimary,
        activeIcon: ImageConstant.imgUserPrimary,
        type: BottomBarEnum.Userprimary,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgGroup34,
      activeIcon: ImageConstant.imgGroup34,
      type: BottomBarEnum.Group34,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup35,
      activeIcon: ImageConstant.imgGroup35,
      type: BottomBarEnum.Group35,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup36,
      activeIcon: ImageConstant.imgGroup36,
      type: BottomBarEnum.Group36,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(18.h),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: theme.colorScheme.onPrimary,
        child: SizedBox(
          height: 88.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    widget.onChanged?.call(bottomMenuList[index].type);
                    setState(() {});
                  },
                  child: bottomMenuList[index].isSelected
                      ? CustomImageView(
                          imagePath: bottomMenuList[index].activeIcon,
                          height: 32.v,
                          width: 24.h,
                          color: theme.colorScheme.primary,
                        )
                      : CustomImageView(
                          imagePath: bottomMenuList[index].icon,
                          height: 32.v,
                          width: 24.h,
                          color: appTheme.gray600,
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Userprimary,
  Group34,
  Group35,
  Group36,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
