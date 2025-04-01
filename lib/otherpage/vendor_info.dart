import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_button.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';
import 'send_request.dart';
import 'vendor_reviews.dart';
import 'vendor_services.dart';

class VendorInfo extends StatefulWidget {
  static String routeName = './VendorInfo';
  const VendorInfo({super.key});

  @override
  State<VendorInfo> createState() => _VendorInfoState();
}

class _VendorInfoState extends State<VendorInfo> {
  List<dynamic> workPhotosList = <dynamic>[
    "./assets/icons/photo1.jpg",
    "./assets/icons/photo2.jpg",
    "./assets/icons/photo3.jpg",
    "./assets/icons/photo4.jpg",
    "./assets/icons/photo1.jpg",
    "./assets/icons/photo2.jpg",
    "./assets/icons/photo3.jpg",
    "./assets/icons/photo4.jpg",
    "./assets/icons/photo1.jpg",
    "./assets/icons/photo2.jpg",
    "./assets/icons/photo3.jpg",
    "./assets/icons/photo4.jpg",
  ];
  bool isClick = false;
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
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 100 / 100,
                  height: MediaQuery.of(context).size.height * 18 / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 100 / 100,
                  height: MediaQuery.of(context).size.height * 13 / 100,
                  child: Image.asset(
                    AppImage.bannerImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 13,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 7 / 100,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      child: Image.asset(
                        AppImage.backIcon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: MediaQuery.of(context).size.width * 38 / 100,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      // Border width
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.greyDarkColor,
                            offset: const Offset(0.0, 0.5),
                            blurRadius: 1.0,
                            spreadRadius: 0.3,
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(42), // Image radius
                          child: Image.asset(AppImage.userImage,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 2 / 100,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(children: [
                  Text(
                    "Andrews Jonas",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.fontFamily,
                        color: Colors.black),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Cleaning",
                          style: TextStyle(
                              fontSize: 13,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: AppColor.themeColor),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 2 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1.2 / 100,
                          height: MediaQuery.of(context).size.width * 1.2 / 100,
                          margin: EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 2 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 3.5 / 100,
                          height: MediaQuery.of(context).size.width * 4 / 100,
                          child: Image.asset(AppImage.starIcon),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1 / 100,
                        ),
                        Text("(5.0)",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: AppFont.fontFamily,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ])),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 5 / 100,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 8.5 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 40 / 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isClick = false;
                            });
                          },
                          child: Container(
                            child: Text(
                              AppLanguage.about[language],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isClick
                                      ? Color(0xff616161)
                                      : AppColor.themeColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.8 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 35 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.4 / 100,
                          color: isClick ? Colors.white : AppColor.themeColor,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 6 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 40 / 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isClick = true;
                            });
                          },
                          child: Container(
                            child: Text(
                              AppLanguage.workPhoto[language],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isClick
                                      ? AppColor.themeColor
                                      : Color(0xff616161)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.8 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 35 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.4 / 100,
                          color: isClick ? AppColor.themeColor : Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1.5 / 100,
            ),
//-----------------------------------about--------------------------------------------------
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (isClick == false)
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              AppLanguage.experienceText[language],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppFont.fontFamily,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 2 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            //padding: EdgeInsets.only(bottom: 2, right: 2),
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
                                  margin: EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      3 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      85 /
                                      100,
                                  child: Text(
                                    'Performed various cleaning duties and provided professional cleaning services to clients, ensuring that their requirements were fully met.',
                                    //textAlign: TextAlign.,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFont.fontFamily,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 4 / 100,
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
                                  margin: EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      3 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      85 /
                                      100,
                                  child: Text(
                                    'Cleaned floors and windows, removed rubbish, restocked supplies, sanitized bathrooms and kitchens, and maintained various equipment.',
                                    //textAlign: TextAlign.,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFont.fontFamily,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 4 / 100,
                          ),
                          Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppLanguage.locationText[language],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: AppFont.fontFamily,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    AppLanguage.viewOnMapText[language],
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        fontFamily: AppFont.fontFamily,
                                        color: Color(0xff0161F1)),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 4 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              "22501 styles st woodlands hills ca 91367-1730 usa",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFont.fontFamily,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 4 / 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VendorServices(),
                                  ));
                            },
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      AppLanguage.services[language],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: AppFont.fontFamily,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        9 /
                                        100,
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                    child: Image.asset(
                                      AppImage.arrowIcon,
                                      //fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
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
                                  margin: EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      3 /
                                      100,
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
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFont.fontFamily,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 4 / 100,
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
                                  width: MediaQuery.of(context).size.width *
                                      3 /
                                      100,
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
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFont.fontFamily,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 4 / 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VendorReviews(),
                                  ));
                            },
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      AppLanguage.reviewText[language],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: AppFont.fontFamily,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        9 /
                                        100,
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                    child: Image.asset(
                                      AppImage.arrowIcon,
                                      //fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      3.5 /
                                      100,
                                  height: MediaQuery.of(context).size.width *
                                      4 /
                                      100,
                                  child: Image.asset(AppImage.starIcon),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      1 /
                                      100,
                                ),
                                Text("5.0/5.0",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: AppFont.fontFamily,
                                        color: Colors.black)),
                                Text(" (1098 review)",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.greyLightColor,
                                        fontFamily: AppFont.fontFamily)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 5 / 100,
                          ),
                          Container(
                            width:
                                MediaQuery.of(context).size.width * 100 / 100,
                            height: MediaQuery.of(context).size.width * 1 / 100,
                            color: AppColor.textFieldColor,
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          AppButton(
                              text: AppLanguage.sendRequestText[language],
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SendRequest(),
                                    ));
                              }),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 6 / 100,
                          ),
                        ],
                      ),
                    //-------------------------------------------------------------------------------
                    if (isClick == true)
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Wrap(
                          children: [
                            ...List.generate(
                                workPhotosList.length,
                                (index) => Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          padding:
                                              EdgeInsets.symmetric(vertical: 5),
                                          margin:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    27 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    10 /
                                                    100,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            workPhotosList[
                                                                index]),
                                                        fit: BoxFit.cover)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ))
                          ],
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
