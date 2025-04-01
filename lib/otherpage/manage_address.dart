import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

import '../view/authentication/profile_setting.dart';



class ManageAddress extends StatefulWidget {
  static String routeName = './ManageAddress';
  const ManageAddress({super.key});

  @override
  State<ManageAddress> createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: AppConstant.systemUiOverlayStyle,
        leading: InkWell(
            onTap: () {},
            child: IconButton(
              icon: Image.asset(
                AppImage.backIcon,
                width: MediaQuery.of(context).size.width * 8 / 100,
                height: MediaQuery.of(context).size.height * 8 / 100,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              },
            )),
        title: Text(AppLanguage.manageAddressText[language],
            style: AppConstant.appBarTitleStyle),
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 3 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 6 / 100,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Color(0xffD9D9D9), width: 0.5),
                      bottom:
                          BorderSide(color: Color(0xffD9D9D9), width: 0.5))),
              alignment: Alignment.center,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 4 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 4 / 100,
                    height: MediaQuery.of(context).size.width * 4 / 100,
                    child: Image.asset(AppImage.addIcon),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Text(
                    AppLanguage.addAddressText[language],
                    style: TextStyle(
                        color: AppColor.themeColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFont.fontFamily),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Color(0xffD9D9D9), width: 1.0),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppFont.fontFamily),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 4 / 100,
                          height: MediaQuery.of(context).size.width * 4 / 100,
                          child: Image.asset(AppImage.threeDotICon),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      "A 87 Jln Teratai 10 Taman Jaya, Malaysia",
                      style: TextStyle(
                          color: Color(0xff757474),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9 / 100,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
