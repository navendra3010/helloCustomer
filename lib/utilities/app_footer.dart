import 'package:flutter/material.dart';
import 'package:hellocustomer/otherpage/serviceFooterscreen.dart';
import '../otherpage/bookings.dart';
import '../otherpage/products.dart';
import '../otherpage/productsScreen.dart';
import '../otherpage/services.dart';
import '../view/authentication/home_screen.dart';
import '../view/authentication/notifiction_screen.dart';
import '../view/authentication/profile.dart';
import '../view/authentication/profile_setting.dart';
import 'app_color.dart';
import 'app_constant.dart';
import 'app_image.dart';

class AppFooter extends StatelessWidget {
  const AppFooter(
      {key, required this.selectedMenu, required this.notificationCount})
      : super(key: key);

  final BottomMenus selectedMenu;
  final int notificationCount;

  @override
  Widget build(BuildContext context) {
    // print('notificationCount=====> $notificationCount');
    // print(notificationCount);
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 8 / 100,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SafeArea(
            top: false,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (BottomMenus.home != selectedMenu) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 20 / 100,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.5 / 100,
                          color: BottomMenus.home == selectedMenu
                              ? AppColor.themeColor
                              : Colors.white,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 6 / 100,
                          height: MediaQuery.of(context).size.height * 5 / 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      BottomMenus.home == selectedMenu
                                          ? AppImage.activehomeIcon
                                          : AppImage.homeIcon))),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (BottomMenus.products != selectedMenu) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => ProductsScreen()));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 20 / 100,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.5 / 100,
                          color: BottomMenus.products == selectedMenu
                              ? AppColor.themeColor
                              : Colors.white,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 6 / 100,
                          height: MediaQuery.of(context).size.height * 5 / 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      BottomMenus.products == selectedMenu
                                          ? AppImage.activProductIcon
                                          : AppImage.inactiveProductIcon))),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (BottomMenus.services != selectedMenu) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => ServiceFooterScreen()));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 20 / 100,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.5 / 100,
                          color: BottomMenus.services == selectedMenu
                              ? AppColor.themeColor
                              : Colors.white,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 7 / 100,
                          height: MediaQuery.of(context).size.height * 5 / 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      BottomMenus.services == selectedMenu
                                          ? AppImage.activeServiceIcon
                                          : AppImage.inactiveServiceIcon))),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (BottomMenus.booking != selectedMenu) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Booking()));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 20 / 100,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.5 / 100,
                          color: BottomMenus.booking == selectedMenu
                              ? AppColor.themeColor
                              : Colors.white,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 6 / 100,
                          height: MediaQuery.of(context).size.height * 5 / 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      BottomMenus.booking == selectedMenu
                                          ? AppImage.activeBookingIcon
                                          : AppImage.inactiveBookingIcon))),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (BottomMenus.profile != selectedMenu) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Setting()));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 20 / 100,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.5 / 100,
                          color: BottomMenus.profile == selectedMenu
                              ? AppColor.themeColor
                              : Colors.white,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 6 / 100,
                          height: MediaQuery.of(context).size.height * 5 / 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      BottomMenus.profile == selectedMenu
                                          ? AppImage.activeProfileIcon
                                          : AppImage.inactiveProfileIcon))),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 2 / 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
