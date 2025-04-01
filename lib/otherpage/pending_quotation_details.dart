import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

class PendingDetails extends StatefulWidget {
  static String routeName = './PendingDetails';
  const PendingDetails({super.key});

  @override
  State<PendingDetails> createState() => _PendingDetailsState();
}

class _PendingDetailsState extends State<PendingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 93 / 100,
              height: MediaQuery.of(context).size.height * 7 / 100,
              child: Row(children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: Container(
                    //alignment: Alignment.centerLeft,
                    child: Image.asset(
                      AppImage.backIcon,
                      width: MediaQuery.of(context).size.width * 8 / 100,
                      height: MediaQuery.of(context).size.height * 8 / 100,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 4 / 100,
                ),
                Container(
                  child: Text(AppLanguage.detailText[language],
                      style: AppConstant.appBarTitleStyle),
                )
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 28 / 100,
                    height: MediaQuery.of(context).size.height * 7.5 / 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage("./assets/icons/user2_image.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 4 / 100,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    40 /
                                    100,
                                child: Text(
                                  "Andrew Jonas",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppFont.fontFamily,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 5 / 100,
                              ),
                              Text(
                                AppLanguage.pendingText[language],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffF1BC01)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Cleaning",
                                style: TextStyle(
                                    fontSize: 11,
                                    height: 1.7,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.themeColor),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 2 / 100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                margin: EdgeInsets.only(top: 3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 2 / 100,
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 3 / 100,
                                child: Image.asset(AppImage.starIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 1 / 100,
                              ),
                              Text("(5.0)",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: AppFont.fontFamily,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.5 / 100,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 3 / 100,
                                child: Image.asset(AppImage.locationIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 1 / 100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    50 /
                                    100,
                                child: Text("22501 STYLES ST WOODLAND HILLS..",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFont.fontFamily,
                                        color: AppColor.greyDarkColor)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 4 / 100,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Text(
                  AppLanguage.addressText[language],
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFont.fontFamily,
                      color: AppColor.primaryColor),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Text(
                  AppLanguage.homeText[language],
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: AppFont.fontFamily,
                      color: AppColor.themeColor),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 60 / 100,
                      child: Text(
                        "22501 STYLES ST WOODLAND HILLS CA 91367-1730 USA",
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColor.primaryColor,
                          fontFamily: AppFont.fontFamily,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Text(
                  AppLanguage.serviceText[language],
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColor.greyDarkColor),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      'Deep Cleaning/Spring Cleaning',
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 13,
                          color: AppColor.primaryColor,
                          fontFamily: AppFont.fontFamily,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      'Laundry Services',
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 13,
                          color: AppColor.primaryColor,
                          fontFamily: AppFont.fontFamily,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      'Ceiling and Wall Cleaning',
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 13,
                          color: AppColor.primaryColor,
                          fontFamily: AppFont.fontFamily,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      'Curtain Cleaning',
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 13,
                          color: AppColor.primaryColor,
                          fontFamily: AppFont.fontFamily,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Text(
                  AppLanguage.workDescText[language],
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: AppFont.fontFamily,
                      fontWeight: FontWeight.w500,
                      color: AppColor.greyDarkColor),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 88 / 100,
              child: Text(
                "Meeting with homeowners to understand their cleaning expectations. Sweeping, washing, mopping, and polishing the floors.",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primaryColor,
                  fontFamily: AppFont.fontFamily,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 88 / 100,
              child: Text(
                'Collecting and disposing of general waste or recyclable items.Sanitizing and disinfecting areas or surfaces within a home...',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primaryColor,
                  fontFamily: AppFont.fontFamily,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
