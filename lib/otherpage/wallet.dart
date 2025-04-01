import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

import '../view/authentication/profile_setting.dart';



class Wallet extends StatefulWidget {
  static String routeName = './Wallet';
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  List<dynamic> transactionHistory = <dynamic>[
    {
      "bookingId": "#3456234567",
      "dateTime": "Mar 13, 2024 09:00 AM",
      "image": "./assets/icons/user_image.jpg",
      "name": "Andrew Jonas",
      "service": "Cleaning",
      "transactionId": "#78234590",
      "amount": "+\$1,300"
    },
    {
      "bookingId": "#3456234567",
      "dateTime": "Sep 13, 2024 09:00 AM",
      "image": "./assets/icons/product_image.png",
      "name": "Vim Domex Cleaning...",
      "service": "Cleaning",
      "transactionId": "#78234590",
      "amount": "-\$2,300"
    },
    {
      "bookingId": "#1056234567",
      "dateTime": "Dec 23, 2024 08:00 AM",
      "image": "./assets/icons/user4_image.jpg",
      "name": "John Cena",
      "service": "Cleaning",
      "transactionId": "#50234590",
      "amount": "-\$2,300"
    },
    {
      "bookingId": "#3456234567",
      "dateTime": "Sep 13, 2024 09:00 AM",
      "image": "./assets/icons/product2_image.png",
      "name": "Vim Domex Cleaning...",
      "service": "Cleaning",
      "transactionId": "#78234590",
      "amount": "+\$3,400"
    },
    {
      "bookingId": "#3456234567",
      "dateTime": "Jul 4, 2024 10:00 PM",
      "image": "./assets/icons/user3_image.jpg",
      "name": "Mark Henry",
      "service": "Cleaning",
      "transactionId": "#78234590",
      "amount": "-\$5,800"
    },
    {
      "bookingId": "#3456234567",
      "dateTime": "Sep 13, 2024 09:00 AM",
      "image": "./assets/icons/product_image.png",
      "name": "Vim Domex Cleaning...",
      "service": "Cleaning",
      "transactionId": "#78234590",
      "amount": "-\$1,300"
    },
    {
      "bookingId": "#3456234567",
      "dateTime": "Mar 13, 2024 09:00 AM",
      "image": "./assets/icons/user2_image.jpg",
      "name": "Andrew Jonas",
      "service": "Cleaning",
      "transactionId": "#78234590",
      "amount": "-\$3,100"
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              },
            )),
        title: Text(AppLanguage.walletText[language],
            style: AppConstant.appBarTitleStyle),
      ),
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
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 16 / 100,
              color: Color(0xffFCDEC7).withOpacity(0.4),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$400.00",
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.fontFamily),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 100,
                  ),
                  Text(
                    AppLanguage.availableAmountText[language],
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFont.fontFamily),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 4 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Text(
                AppLanguage.transacHistoryText[language],
                style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppFont.fontFamily),
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
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          ...List.generate(
                              transactionHistory.length,
                              (index) => Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                90 /
                                                100,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 7),
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
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
                                                  Row(
                                                    children: [
                                                      Text(
                                                        AppLanguage
                                                                .bookingIdText[
                                                            language],
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .primaryColor,
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily: AppFont
                                                                .fontFamily),
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            1 /
                                                            100,
                                                      ),
                                                      Text(
                                                        transactionHistory[
                                                            index]["bookingId"],
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .primaryColor,
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily: AppFont
                                                                .fontFamily),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    transactionHistory[index]
                                                        ["dateTime"],
                                                    style: TextStyle(
                                                        color: AppColor
                                                            .greyDarkColor,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily:
                                                            AppFont.fontFamily),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1.3 /
                                                  100,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  90 /
                                                  100,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            15 /
                                                            100,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            15 /
                                                            100,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10)),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                transactionHistory[
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
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            70 /
                                                            100,
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
                                                              50 /
                                                              100,
                                                          child: Text(
                                                            transactionHistory[
                                                                index]["name"],
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                                color: AppColor
                                                                    .primaryColor,
                                                                fontSize: 15,
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
                                                              0.4 /
                                                              100,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              50 /
                                                              100,
                                                          child: Text(
                                                            transactionHistory[
                                                                    index]
                                                                ["service"],
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                                color: AppColor
                                                                    .themeColor,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontFamily: AppFont
                                                                    .fontFamily),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    AppLanguage
                                                                            .transacIdText[
                                                                        language],
                                                                    style: TextStyle(
                                                                        color: AppColor
                                                                            .greyDarkColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        fontFamily:
                                                                            AppFont.fontFamily),
                                                                  ),
                                                                  SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        1 /
                                                                        100,
                                                                  ),
                                                                  Text(
                                                                    transactionHistory[
                                                                            index]
                                                                        [
                                                                        "transactionId"],
                                                                    style: TextStyle(
                                                                        color: AppColor
                                                                            .greyDarkColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        fontFamily:
                                                                            AppFont.fontFamily),
                                                                  )
                                                                ],
                                                              ),
                                                              Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      30 /
                                                                      100,
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child: Text(
                                                                    transactionHistory[
                                                                            index]
                                                                        [
                                                                        "amount"],
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xffAE1717),
                                                                        fontSize:
                                                                            17,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        fontFamily:
                                                                            AppFont.fontFamily),
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
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
                        height: MediaQuery.of(context).size.height * 6 / 100,
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
