import 'package:door_with_rfid/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: "Home",
      activeColorPrimary: AppColors.baseColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    // PersistentBottomNavBarItem(
    //   icon: const Icon(CupertinoIcons.search),
    //   title: "Search",
    //   activeColorPrimary: AppColors.baseColor,
    //   inactiveColorPrimary: CupertinoColors.systemGrey,
    // ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        CupertinoIcons.add,
        color: Colors.white,
      ),
      title: "Add",
      activeColorPrimary: AppColors.baseColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.clock),
      title: "History",
      activeColorPrimary: AppColors.baseColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    // PersistentBottomNavBarItem(
    //   icon: const Icon(CupertinoIcons.settings),
    //   title: "Settings",
    //   activeColorPrimary: AppColors.baseColor,
    //   inactiveColorPrimary: CupertinoColors.systemGrey,
    // ),
  ];
}
