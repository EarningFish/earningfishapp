import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

enum BottomBarEnum { Wallet, Seller, FishBowl, Myfish, Profile }

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  final Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 1;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavWallet,
      activeIcon: ImageConstant.imgNavWallet,
      title: "Wallet".tr,
      type: BottomBarEnum.Wallet,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSeller,
      activeIcon: ImageConstant.imgNavSeller,
      title: "Seller".tr,
      type: BottomBarEnum.Seller,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFishBowlAnimation,
      activeIcon: ImageConstant.imgFishBowlAnimation,
      title: "FishBowl".tr,
      type: BottomBarEnum.FishBowl,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMyFishes,
      activeIcon: ImageConstant.imgNavMyFishes,
      title: "My Fish".tr,
      type: BottomBarEnum.Myfish,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile,
      activeIcon: ImageConstant.imgNavProfile,
      title: "Profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.v,
      child: Opacity(
        opacity: 0.5,
        child: BottomNavigationBar(
          backgroundColor: appTheme.onBottomContainer,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            if (bottomMenuList[index].isCircle) {
              return BottomNavigationBarItem(
                icon: SizedBox(
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: 0.1,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            margin: EdgeInsets.only(
                              right: 2.h,
                              bottom: 2.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700.withOpacity(0.46),
                              borderRadius: BorderRadius.circular(
                                26.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFishBowlAnimation,
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        radius: BorderRadius.circular(
                          27.h,
                        ),
                        alignment: Alignment.center,
                      )
                    ],
                  ),
                ),
                label: '',
              );
            }
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.indigo50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.indigo50,
                      ),
                    ),
                  )
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.indigo50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.indigo50,
                      ),
                    ),
                  )
                ],
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
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isCircle = false,
  });

  final String icon;
  final String activeIcon;
  final String? title;
  final BottomBarEnum type;
  final bool isCircle;
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
              '',
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