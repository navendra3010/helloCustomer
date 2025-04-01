import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../../otherpage/mostPopularVendors.dart';
import '../../otherpage/mostpopularProduct.dart';
import '../../otherpage/mostpopularService.dart';
import '../../otherpage/productCategorie.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_footer.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class Home extends StatefulWidget {
  static String routeName = './Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  List<dynamic> cardList = <dynamic>[
    {
      "image": "./assets/icons/discount_cardImage.png",
      "color": Color(0xffFFC497)
    },
    {
      "image": "./assets/icons/discount_cardImage.png",
      "color": Color(0xff3D59C5)
    },
    {
      "image": "./assets/icons/discount_cardImage.png",
      "color": Color(0xffFFC497)
    },
  ];

  List<dynamic> populerserviceList = <dynamic>[
    {
      "image": "./assets/icons/full-shot-people-cleaning-office.jpg",
      "name": "Cleaning"
    },
    {
      "image": "./assets/icons/carpenter-cutting-mdf-board-inside-workshop.jpg",
      "name": "Capenter Service"
    },
    {
      "image":
          "./assets/icons/beautician-with-brush-applies-white-moisturizing-mask-face-young-girl-client-spa-beauty-salon.jpg",
      "name": " Beauty service"
    },
  ];

  List<dynamic> productList = <dynamic>[
    {
      "image": "./assets/icons/userImage1.jpg",
      "customerName": "Andrew Jonas",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "description":
          "Lorem ipsum dolor sit amet consectetur. Egestas nunc nulla velit velit.... "
    },
    {
      "image": "./assets/icons/userImage2.jpg",
      "customerName": "Allay Johnson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "description":
          "Lorem ipsum dolor sit amet consectetur. Egestas nunc nulla velit velit.... "
    },
  ];

  List<dynamic> vendorsList = <dynamic>[
    {
      "image": "./assets/icons/userImage3.jpg",
      "customerName": "Andrew Jonas",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "servise": "Cleaning",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Cleaning"
    },
    {
      "image": "./assets/icons/userImage3.jpg",
      "customerName": "John Johnson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
  ];

  List<dynamic> produtList = <dynamic>[
    {
      "image": "./assets/icons/productImage.png",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$2400",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Cleaning"
    },
    {
      "image": "./assets/icons/productImage.png",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor:
          AppColor.secondryColor, // Change this to your desired color
    ));
    return WillPopScope(
      onWillPop: () {
        return _showAlertDialog(context);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width * 100 / 100,
            height: MediaQuery.of(context).size.height * 100 / 100,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 100 / 100,
                        height: MediaQuery.of(context).size.height * 18 / 100,
                        child: Image.asset(AppImage.homescreenImage,
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.height * 4 / 100,
                          left: 18,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          15 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              15 /
                                              100,
                                      child: Image.asset(
                                        AppImage.appLogoIcon,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              38 /
                                              100,
                                          child: Text(
                                            "1925 SANTA YNEZ ....",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: AppFont.fontFamily,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                            maxLines: 1,
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              3.5 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              3.5 /
                                              100,
                                          child: Image.asset(
                                            AppImage.downIcon,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              6 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              6 /
                                              100,
                                          child: Image.asset(
                                            AppImage.activenotificationIcon,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.5 /
                                              100,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              6 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              6 /
                                              100,
                                          child: Image.asset(
                                            AppImage.cardIcon,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    3 /
                                    100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage.whatareyoulokingforText[language],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: AppFont.fontFamily,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 15 / 100,
                          height: MediaQuery.of(context).size.width * 15 / 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), //<-SEE HERE

                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                AppImage.serviceIcon,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 3 / 100,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    AppLanguage.servicesText[language],
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: AppFont.fontFamily,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                    maxLines: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.width *
                                      0.5 /
                                      100,
                                ),
                                Container(
                                  child: Text(
                                    AppLanguage.findservicesText[language],
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: AppFont.fontFamily,
                                        color: Color(0xff979797),
                                        fontWeight: FontWeight.w600),
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 15 / 100,
                          height: MediaQuery.of(context).size.width * 15 / 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), //<-SEE HERE

                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                AppImage.productIcon,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 3 / 100,
                        ),
                        GestureDetector(
                          onTap: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductScreenCategorie(),
                                  ));
                          },
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      AppLanguage.productsText[language],
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: AppFont.fontFamily,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      maxLines: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.5 /
                                        100,
                                  ),
                                  Container(
                            width: MediaQuery.of(context).size.width * 70/ 100,
                        
                                    child: Text(
                                      AppLanguage.productexploeText[language],
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: AppFont.fontFamily,
                                          color: Color(0xff979797),
                                          fontWeight: FontWeight.w600),
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
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
                  Container(
                    width: MediaQuery.of(context).size.width * 94 / 100,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            children: [
                              ...List.generate(
                                cardList.length,
                                (index) => Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                  width: MediaQuery.of(context).size.width *
                                      85 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      16 /
                                      100,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(14), //<-SEE HERE
                                    color: cardList[index]['color'],
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        cardList[index]['image'],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            AppLanguage.mostrequestrecievedText[language],
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: AppFont.fontFamily,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                           
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 8 / 100,
                            height: MediaQuery.of(context).size.width * 8 / 100,
                            child: Image.asset(
                              AppImage.nextIcon,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          children: [
                            ...List.generate(
                                productList.length,
                                (index) => Container(
                                      width: MediaQuery.of(context).size.width *
                                          90 /
                                          100,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      margin: EdgeInsets.symmetric(vertical: 3),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5 /
                                                100,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                90 /
                                                100,
                                            child: Row(
                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      28 /
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
                                                                  14)),
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            productList[index]
                                                                ["image"]),
                                                        //fit: BoxFit
                                                        //.cover
                                                      )),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      2 /
                                                      100,
                                                ),
                                                Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                32.5 /
                                                                100,
                                                            //color: Colors.amber,
                                                            child: Text(
                                                              productList[index]
                                                                  [
                                                                  "customerName"],
                                                              maxLines: 1,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontFamily:
                                                                      AppFont
                                                                          .fontFamily,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 13),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.5 /
                                                                100,
                                                          ),
                                                          Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          8),
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  2.5 /
                                                                  100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: AppColor
                                                                    .themeColor,
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            25)),
                                                              ),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                AppLanguage
                                                                        .viewQuotationText[
                                                                    language],
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontFamily:
                                                                        AppFont
                                                                            .fontFamily,
                                                                    fontSize:
                                                                        10),
                                                              )),
                                                        ],
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
                                                        child: Text(
                                                          "Cleaning",
                                                          maxLines: 1,
                                                          style: TextStyle(
                                                            fontSize: 11,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            color: AppColor
                                                                .themeColor,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
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
                                                      Row(
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              AppLanguage
                                                                      .quotationpriceText[
                                                                  language],
                                                              maxLines: 1,
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      AppFont
                                                                          .fontFamily,
                                                                  color: Color(
                                                                      0xff616161),
                                                                  fontSize: 11),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              productList[index]
                                                                  ['price'],
                                                              maxLines: 1,
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      AppFont
                                                                          .fontFamily,
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 11),
                                                            ),
                                                          ),
                                                        ],
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
                                                            58 /
                                                            100,
                                                        child: Text(
                                                          productList[index]
                                                              ['description'],
                                                          maxLines: 2,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily: AppFont
                                                                  .fontFamily,
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            AppLanguage.mostpopularserviceTest[language],
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: AppFont.fontFamily,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MostPopularServiceScreen(),
                                  ));
  
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 8 / 100,
                            height: MediaQuery.of(context).size.width * 8 / 100,
                            child: Image.asset(
                              AppImage.nextIcon,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 94 / 100,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            children: [
                              ...List.generate(
                                populerserviceList.length,
                                (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      width: MediaQuery.of(context).size.width *
                                          47 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              15 /
                                              100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10), //<-SEE HERE

                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            populerserviceList[index]['image'],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.5 /
                                              100,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          47 /
                                          100,
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        populerserviceList[index]['name'],
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: AppFont.fontFamily,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
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
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            AppLanguage.mostpopularvendorsTest[language],
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: AppFont.fontFamily,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                             print("object");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MostPopularVendorsScreen(),
                                  ));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 8 / 100,
                            height: MediaQuery.of(context).size.width * 8 / 100,
                            child: Image.asset(
                              AppImage.nextIcon,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 94 / 100,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            children: [
                              ...List.generate(
                                vendorsList.length,
                                (index) => Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                47 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                15 /
                                                100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              14), //<-SEE HERE

                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              vendorsList[index]['image'],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5 /
                                                100,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                40 /
                                                100,
                                            child: Text(
                                              vendorsList[index]
                                                  ['customerName'],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                              maxLines: 1,
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                3 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                3 /
                                                100,
                                            child: Image.asset(
                                              AppImage.starfillIcon,
                                            ),
                                          ),
                                          Text(
                                            " (5)",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: AppFont.fontFamily,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.3 /
                                                100,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                47 /
                                                100,
                                        child: Text(
                                          vendorsList[index]['service'],
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontFamily: AppFont.fontFamily,
                                              color: AppColor.themeColor,
                                              fontWeight: FontWeight.w500),
                                          maxLines: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5 /
                                                100,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  3.5 /
                                                  100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  3.5 /
                                                  100,
                                              child: Image.asset(
                                                AppImage.locationIcon,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5 /
                                                  100,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  45 /
                                                  100,
                                              child: Text(
                                                vendorsList[index]['address'],
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    color: Color(0xff616161),
                                                    fontWeight:
                                                        FontWeight.w500),
                                                maxLines: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                1.5 /
                                                100,
                                      ),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: AppColor.themeColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            AppLanguage.sendquoteText[language],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10),
                                          )),
                                    ],
                                  ),
                                ),
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
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            AppLanguage.mostpopularpropductsText[language],
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: AppFont.fontFamily,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MostPopularProductsScreen(),
                                  ));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 8 / 100,
                            height: MediaQuery.of(context).size.width * 8 / 100,
                            child: Image.asset(
                              AppImage.nextIcon,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 94 / 100,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            children: [
                              ...List.generate(
                                produtList.length,
                                (index) => Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                47 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                15 /
                                                100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              14), //<-SEE HERE

                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              produtList[index]['image'],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5 /
                                                100,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                40 /
                                                100,
                                            child: Text(
                                              produtList[index]['productName'],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                              maxLines: 2,
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                3 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                3 /
                                                100,
                                            child: Image.asset(
                                              AppImage.starfillIcon,
                                            ),
                                          ),
                                          Text(
                                            " (5)",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: AppFont.fontFamily,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.3 /
                                                100,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                47 /
                                                100,
                                        child: Text(
                                          produtList[index]['service'],
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontFamily: AppFont.fontFamily,
                                              color: AppColor.themeColor,
                                              fontWeight: FontWeight.w500),
                                          maxLines: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5 /
                                                100,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                45 /
                                                100,
                                        child: Text(
                                          produtList[index]['price'],
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: AppFont.fontFamily,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                          maxLines: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                1.5 /
                                                100,
                                      ),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: AppColor.themeColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            AppLanguage.buynowText[language],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10),
                                          )),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 10 / 100,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const AppFooter(
            selectedMenu: BottomMenus.home, notificationCount: 0),
      ),
    );
  }

  _showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "No",
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes", style: TextStyle(color: Colors.black)),
      onPressed: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(AppLanguage.areYouSureText[language]),
      content: Text(AppLanguage.exitAppText[language]),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
