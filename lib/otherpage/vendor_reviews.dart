import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

class VendorReviews extends StatefulWidget {
  static String routeName = './VendorReviews';
  const VendorReviews({super.key});

  @override
  State<VendorReviews> createState() => _VendorReviewsState();
}

class _VendorReviewsState extends State<VendorReviews> {
  List<dynamic> reviewList = <dynamic>[
    {
      "image": "./assets/icons/user2_image.jpg",
      "name": "Edward Thomas",
      "date": "Apr 20, 2024 10:00 AM",
      "rating": "./assets/icons/icon_5star_icon.png",
      "review":
          "I was pleased with the service that I received. The employees were pleasant; the work was well done. I will use them their service again. And using them again is the best recommendation."
    },
    {
      "image": "./assets/icons/user3_image.jpg",
      "name": "Bella Johnson",
      "date": "Jan 13, 2024 10:00 AM",
      "rating": "./assets/icons/icon_5star_icon.png",
      "review":
          "Very thorough clean, attention to detail is high, and very efficient, getting house cleaned quickly and effectively!"
    },
    {
      "image": "./assets/icons/user4_image.jpg",
      "name": "Emmy Jackson",
      "date": "Dec 10, 2023 10:00 AM",
      "rating": "./assets/icons/icon_5star_icon.png",
      "review":
          "Very thorough clean, attention to detail is high, and very efficient, getting house cleaned quickly and effectively!"
    },
  ];
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
                Navigator.pop(context);
              },
            )),
        title: Text(AppLanguage.reviewText[language],
            style: AppConstant.appBarTitleStyle),
      ),
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
              width: MediaQuery.of(context).size.width * 90 / 100,
              height: MediaQuery.of(context).size.height * 33 / 100,  
              alignment: Alignment.centerLeft,
              child: Image.asset(
                AppImage.ratingIcon,
                //fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 3 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              height: MediaQuery.of(context).size.height * 0.5 / 100,
              color: AppColor.textFieldColor,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
////-------------------------------------------------------------------------------------
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      children: [
                        ...List.generate(
                            reviewList.length,
                            (index) => Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          90 /
                                          100,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      margin: EdgeInsets.symmetric(vertical: 7),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                90 /
                                                100,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius:
                                                            28, // Image radius
                                                        backgroundImage:
                                                            AssetImage(
                                                                reviewList[
                                                                        index]
                                                                    ["image"]),
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            3 /
                                                            100,
                                                      ),
                                                      Container(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  40 /
                                                                  100,
                                                              child: Text(
                                                                reviewList[
                                                                        index]
                                                                    ["name"],
                                                                maxLines: 1,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontFamily:
                                                                        AppFont
                                                                            .fontFamily,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  22 /
                                                                  100,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  3 /
                                                                  100,
                                                              child: Image.asset(
                                                                  reviewList[
                                                                          index]
                                                                      [
                                                                      "rating"]),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 20),
                                                  child: Text(
                                                    reviewList[index]["date"],
                                                    style: TextStyle(
                                                        color: AppColor
                                                            .greyDarkColor,
                                                        fontSize: 11,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1 /
                                                100,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                88 /
                                                100,
                                            child: Text(
                                              reviewList[index]["review"],
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 10 / 100,
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
