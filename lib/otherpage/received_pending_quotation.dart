import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

import 'pending_quotation_details.dart';
import 'quotation_details.dart';


class Quotation extends StatefulWidget {
  static String routeName = './Quotation';
  const Quotation({super.key});

  @override
  State<Quotation> createState() => _QuotationState();
}

class _QuotationState extends State<Quotation> {
  bool isClick = false;
  List<dynamic> pendingList = <dynamic>[
    {
      "image": "./assets/icons/user3_image.jpg",
      "name": "Andrew Jonas",
      "status": "Pending",
      "service": "Cleaning",
      "description":
          "Lorem ipsum dolor sit amet consectetur.Egestas nunc nulla velit velit.... "
    },
    {
      "image": "./assets/icons/user2_image.jpg",
      "name": "Emma Karl",
      "status": "Pending",
      "service": "Cleaning",
      "description":
          "Lorem ipsum dolor sit amet consectetur.Egestas nunc nulla velit velit.... "
    },
  ];
  List<dynamic> receivedList = <dynamic>[
    {
      "image": "./assets/icons/user4_image.jpg",
      "name": "Allay Abraham",
      "service": "Cleaning",
      "price": "\$1,300",
      "description":
          "Lorem ipsum dolor sit amet consectetur.Egestas nunc nulla velit velit.... "
    },
    {
      "image": "./assets/icons/user2_image.jpg",
      "name": "Kelly Johnson",
      "service": "Cleaning",
      "price": "\$2,500",
      "description":
          "Lorem ipsum dolor sit amet consectetur.Egestas nunc nulla velit velit.... "
    },
  ];
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
              width: MediaQuery.of(context).size.width * 90 / 100,
              height: MediaQuery.of(context).size.height * 7 / 100,
              child: Row(
                children: [
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
                    child: Text(AppLanguage.quotationText[language],
                        style: AppConstant.appBarTitleStyle),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 3 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 5 / 100,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 4 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 42 / 100,
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
                              AppLanguage.pendingRequestText[language],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: isClick
                                      ? Color(0xff616161)
                                      : AppColor.themeColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
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
                    width: MediaQuery.of(context).size.width * 42 / 100,
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
                              AppLanguage.ReceivedQuotationText[language],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: isClick
                                      ? AppColor.themeColor
                                      : Color(0xff616161)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 35 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.4 / 100,
                          color: isClick ? AppColor.themeColor : Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (isClick == false)
                        Column(
                          children: [
                            Wrap(
                              direction: Axis.vertical,
                              children: [
                                ...List.generate(
                                    pendingList.length,
                                    (index) => Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  90 /
                                                  100,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6),
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 6),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            29 /
                                                            100,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            9 /
                                                            100,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10)),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                pendingList[
                                                                        index]
                                                                    ["image"]),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            2.5 /
                                                            100,
                                                  ),
                                                  Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    30 /
                                                                    100,
                                                                child: Text(
                                                                  pendingList[
                                                                          index]
                                                                      ["name"],
                                                                  maxLines: 1,
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: AppColor
                                                                        .primaryColor,
                                                                    fontFamily:
                                                                        AppFont
                                                                            .fontFamily,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    14 /
                                                                    100,
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                PendingDetails(),
                                                                      ));
                                                                },
                                                                child: Text(
                                                                  pendingList[
                                                                          index]
                                                                      [
                                                                      "status"],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontFamily:
                                                                          AppFont
                                                                              .fontFamily,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: Color(
                                                                          0xffF1BC01)),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.5 /
                                                              100,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              27 /
                                                              100,
                                                          child: Text(
                                                            pendingList[index]
                                                                ["service"],
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: AppColor
                                                                    .themeColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontFamily: AppFont
                                                                    .fontFamily),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.5 /
                                                              100,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              57 /
                                                              100,
                                                          child: Text(
                                                            pendingList[index]
                                                                ["description"],
                                                            maxLines: 2,
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ))
                              ],
                            )
                          ],
                        ),
                      if (isClick == true)
                        Column(
                          children: [
                            Wrap(
                              direction: Axis.vertical,
                              children: [
                                ...List.generate(
                                    pendingList.length,
                                    (index) => Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  90 /
                                                  100,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6),
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 6),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            29 /
                                                            100,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            9 /
                                                            100,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10)),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                pendingList[
                                                                        index]
                                                                    ["image"]),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            2.5 /
                                                            100,
                                                  ),
                                                  Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    30 /
                                                                    100,
                                                                child: Text(
                                                                  pendingList[
                                                                          index]
                                                                      ["name"],
                                                                  maxLines: 1,
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: AppColor
                                                                        .primaryColor,
                                                                    fontFamily:
                                                                        AppFont
                                                                            .fontFamily,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    5 /
                                                                    100,
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                QuotationDetail(),
                                                                      ));
                                                                },
                                                                child:
                                                                    Container(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            22 /
                                                                            100,
                                                                        height: MediaQuery.of(context).size.height *
                                                                            2.4 /
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              AppColor.themeColor,
                                                                          borderRadius:
                                                                              BorderRadius.all(Radius.circular(25)),
                                                                        ),
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child:
                                                                            Text(
                                                                          AppLanguage
                                                                              .viewQuotationText[language],
                                                                          style: TextStyle(
                                                                              color: Colors.white,
                                                                              fontWeight: FontWeight.w600,
                                                                              fontFamily: AppFont.fontFamily,
                                                                              fontSize: 10),
                                                                        )),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.2 /
                                                              100,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              27 /
                                                              100,
                                                          child: Text(
                                                            receivedList[index]
                                                                ["service"],
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: AppColor
                                                                    .themeColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontFamily: AppFont
                                                                    .fontFamily),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.3 /
                                                              100,
                                                        ),
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                AppLanguage
                                                                        .quotationPriceText[
                                                                    language],
                                                                style: TextStyle(
                                                                    color: AppColor
                                                                        .greyDarkColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontFamily:
                                                                        AppFont
                                                                            .fontFamily,
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                              Text(
                                                                receivedList[
                                                                        index]
                                                                    ["price"],
                                                                style: TextStyle(
                                                                    color: AppColor
                                                                        .primaryColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontFamily:
                                                                        AppFont
                                                                            .fontFamily,
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.3 /
                                                              100,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              57 /
                                                              100,
                                                          child: Text(
                                                            receivedList[index]
                                                                ["description"],
                                                            maxLines: 2,
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ))
                              ],
                            )
                          ],
                        )
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
