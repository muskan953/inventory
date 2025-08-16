import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Home, Orders, Dashboard, Settings }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}


class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHomePrimary,
      activeIcon: ImageConstant.imgNavHomePrimary,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavOrders,
      activeIcon: ImageConstant.imgNavOrders,
      title: "Orders",
      type: BottomBarEnum.Orders,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavDashboard,
      activeIcon: ImageConstant.imgNavDashboard,
      title: "Dashboard",
      type: BottomBarEnum.Dashboard,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSettingsSecondarycontainer,
      activeIcon: ImageConstant.imgNavSettingsSecondarycontainer,
      title: "Settings",
      type: BottomBarEnum.Settings,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onError,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -2,
              0,
            ),
          )
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 24.h,
                  width: 24.h,
                  color: theme.colorScheme.secondaryContainer,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style:
                        CustomTextStyles.bodySmallSecondaryContainer10.copyWith(
                      color: theme.colorScheme.secondaryContainer,
                    ),
                  ),
                )
              ],
            ),
            activeIcon: SizedBox(
              width: 44.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 4.h,
                    width: 44.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(2.h),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.h,
                    width: double.maxFinite,
                    color: theme.colorScheme.primary,
                    margin: EdgeInsets.only(top: 13.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodySmall10.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  )
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}


class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
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
            )
          ],
        ),
      ),
    );
  }
}

