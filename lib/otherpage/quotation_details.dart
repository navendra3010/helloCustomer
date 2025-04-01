import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

class QuotationDetail extends StatefulWidget {
  static String routeName = './QuotationDetails';
  const QuotationDetail({super.key});

  @override
  State<QuotationDetail> createState() => _QuotationDetailState();
}

class _QuotationDetailState extends State<QuotationDetail> {
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
              Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 100 / 100,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          color: AppColor.textFieldColor,
                          alignment: Alignment.center,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Text(
                                  AppLanguage.quotationMessage[language],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: AppFont.fontFamily),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Container(
                                    child: Row(
                                  children: [
                                    Text(
                                      AppLanguage.quotationPriceText[language],
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.greyDarkColor),
                                    ),
                                    Text(
                                      "\$1,300",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontFamily: AppFont.fontFamily),
                                    )
                                  ],
                                )),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.8 /
                                      100,
                                ),
                                Container(
                                    child: Row(
                                  children: [
                                    Text(
                                      AppLanguage.workingHoursText[language],
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.greyDarkColor),
                                    ),
                                    Text(
                                      "5 Hours",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontFamily: AppFont.fontFamily),
                                    )
                                  ],
                                )),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      90 /
                                      100,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet consectetur. Ultrices ornare vel pellentesque varius lorem. Nibh purus sapien alique t eu quam. Lobortis adipiscing mattis duis aenean est placerat sed. Massa tortor sagittis morbi tempus lectus lorem pharetra.",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: AppFont.fontFamily),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      90 /
                                      100,
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                28 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                7 /
                                                100,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "./assets/icons/user2_image.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                2 /
                                                100,
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  50 /
                                                  100,
                                              child: Text(
                                                "Andrew Jonas",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Cleaning",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        height: 1.6,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: AppColor
                                                            .themeColor),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            2 /
                                                            100,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.2 /
                                                            100,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.2 /
                                                            100,
                                                    margin:
                                                        EdgeInsets.only(top: 3),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            2 /
                                                            100,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            3 /
                                                            100,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            3 /
                                                            100,
                                                    child: Image.asset(
                                                        AppImage.starIcon),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1 /
                                                            100,
                                                  ),
                                                  Text("(5.0)",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          color: Colors.black)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5 /
                                                  100,
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            3 /
                                                            100,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            3 /
                                                            100,
                                                    child: Image.asset(
                                                        AppImage.locationIcon),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1 /
                                                            100,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            50 /
                                                            100,
                                                    child: Text(
                                                        "22501 STYLES ST WOODLAND HILLS..",
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            color: AppColor
                                                                .greyDarkColor)),
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
                                  height: MediaQuery.of(context).size.width *
                                      3 /
                                      100,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 3 / 100,
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
                                  width: MediaQuery.of(context).size.width *
                                      60 /
                                      100,
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
                                width: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                margin: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    85 /
                                    100,
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
                                width: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                margin: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    85 /
                                    100,
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
                          height: MediaQuery.of(context).size.width * 2 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                margin: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    85 /
                                    100,
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
                                width: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    1.2 /
                                    100,
                                margin: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    85 /
                                    100,
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 4 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        44 /
                                        100,
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff309D27),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      AppLanguage.acceptText[language],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontFamily: AppFont.fontFamily,
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        44 /
                                        100,
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffAE1717),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      AppLanguage.rejectText[language],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontFamily: AppFont.fontFamily,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 6 / 100,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
