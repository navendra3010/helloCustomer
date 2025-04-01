import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

import 'add_address2.dart';

class AddAddress1 extends StatefulWidget {
  static String routeName = './AddAddress1';
  const AddAddress1({super.key});

  @override
  State<AddAddress1> createState() => _AddAddress1State();
}

class _AddAddress1State extends State<AddAddress1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: Image.asset(
                          AppImage.backIcon,
                          width: MediaQuery.of(context).size.width * 8 / 100,
                          height: MediaQuery.of(context).size.height * 8 / 100,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 3 / 100,
                      ),
                      Text(AppLanguage.addAdressText[language],
                          style: AppConstant.appBarTitleStyle),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddAddress2(),
                          ));
                    },
                    child: Row(
                      children: [
                        Text(
                          AppLanguage.skipText[language],
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: AppFont.fontFamily,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          AppImage.forwardArrowblackIcon,
                          width: MediaQuery.of(context).size.width * 5 / 100,
                          height: MediaQuery.of(context).size.height * 5 / 100,
                        ),
                        Image.asset(
                          AppImage.forwardArrowblackIcon,
                          width: MediaQuery.of(context).size.width * 5 / 100,
                          height: MediaQuery.of(context).size.height * 5 / 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddAddress2(),
                    ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 6 / 100,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Color(0xffD9D9D9), width: 1.0),
                        bottom:
                            BorderSide(color: Color(0xffD9D9D9), width: 1.0))),
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
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily),
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
      )),
    );
  }
}
