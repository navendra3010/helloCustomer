import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_footer.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import 'productCategorie.dart';
import 'serviceSubcategoryScreen.dart';

class ServiceFooterScreen extends StatefulWidget {
  static String routeName = './ServiceFooterScreen';

  const ServiceFooterScreen({super.key});

  @override
  State<ServiceFooterScreen> createState() => _ServiceFooterScreenState();
}

class _ServiceFooterScreenState extends State<ServiceFooterScreen> {
  @override
  void initState() {
    super.initState();
  }

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
      "image": "./assets/icons/userImage1.jpg",
      "customerName": "John Johnson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Electricians"
    },
    {
      "image": "./assets/icons/userImage3.jpg",
      "customerName": "Jack Decosta",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
    {
      "image": "./assets/icons/userImage1.jpg",
      "customerName": "John Decosta",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Electricians"
    },
    {
      "image": "./assets/icons/userImage3.jpg",
      "customerName": "John Johnson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
    {
      "image": "./assets/icons/userImage3.jpg",
      "customerName": "Mark Johnson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
  ];

  List<dynamic> recentlyviewedList = <dynamic>[
    {
      "image": "./assets/icons/userImage3.jpg",
      "customerName": "Andrew Jonas",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "servise": "Cleaning",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Cleaning"
    },
    {
      "image": "./assets/icons/userImage1.jpg",
      "customerName": "John Johnson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Electricians"
    },
    {
      "image": "./assets/icons/userImage3.jpg",
      "customerName": "Jack Decosta",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
    {
      "image": "./assets/icons/userImage1.jpg",
      "customerName": "John Decosta",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Electricians"
    },
    {
      "image": "./assets/icons/userImage3.jpg",
      "customerName": "John Johnson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
    {
      "image": "./assets/icons/userImage3.jpg",
      "customerName": "Mark Johnson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
  ];

  List<dynamic> categoriesList = <dynamic>[
    {
      "image": "./assets/icons/Icon_homehealthcare.png",
      "name": "Home Care& Maintenance",
      "status": false,
    },
    {
      "image": "./assets/icons/Icon_scurity.png",
      "name": "Security Services",
      "status": true,
    },
    {
      "image": "./assets/icons/Icon_childcare.png",
      "name": "Child Care Services",
      "status": true,
    },
    {
      "image": "./assets/icons/Iconhealthcare.png",
      "name": "HealthCare",
      "status": true,
    },
    {
      "image": "./assets/icons/Icon_carservice.png",
      "name": "Car Rental Services",
      "status": true,
    },
    {
      "image": "./assets/icons/Icon_eletoricity.png",
      "name": "Food Delivery Services",
      "status": true,
    },
    {
      "image": "./assets/icons/Icon_eletoricity.png",
      "name": "Electronics Repair",
      "status": true,
    },
    {
      "image": "./assets/icons/Icon_cookservice.png",
      "name": "Cooking/ChefServices.",
      "status": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor:
          AppColor.secondryColor, // Change this to your desired color
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 100 / 100,
          height: MediaQuery.of(context).size.height * 100 / 100,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 89 / 100,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        AppLanguage.servicesText[language],
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: AppFont.fontFamily,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 89 / 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 89 / 100,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          // inputFormatters: [maskFormatter],
                          maxLines: 1,
                          style:
                              const TextStyle(height: 0.9, color: Colors.black),
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.name,

                          maxLength: 100,
                          // onChanged: (value) {
                          //   setState(() {
                          //     this.isCheck = !isCheck;
                          //   });
                          // },

                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.textFieldColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.textFieldColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.textFieldColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              contentPadding: EdgeInsets.only(top: 8),
                              prefixIcon: IconButton(
                                icon: Container(
                                  width: MediaQuery.of(context).size.width *
                                      4.2 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      2.3 /
                                      100,
                                  alignment: Alignment.bottomCenter,
                                  child: Image.asset(
                                    AppImage.searchIcon,
                                    //fit: BoxFit.cover,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                              fillColor: AppColor.textFieldColor,
                              filled: true,
                              counterText: '',
                              hintText: AppLanguage.searchServiceText[language],
                              hintStyle: AppConstant.textFilledStyle),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1.5 / 100,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 88.5 / 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                AppLanguage.categoriesText[language],
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
                                      builder: (context) =>
                                          ProductScreenCategorie(),
                                    ));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      AppLanguage.viewallText[language],
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: AppFont.fontFamily,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      maxLines: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.5 /
                                        100,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        4 /
                                        100,
                                    height: MediaQuery.of(context).size.width *
                                        4 /
                                        100,
                                    child: Image.asset(
                                      AppImage.nextDoubleIcon,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2.5 / 100,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 94 / 100,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            children: [
                              ...List.generate(
                                categoriesList.length,
                                (index) => GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ServiceSubcategoryScreen(),
                                        ));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        28 /
                                        100,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 6),
                                    height: MediaQuery.of(context).size.height *
                                        18 /
                                        100,
                                    decoration: BoxDecoration(
                                      color: categoriesList[index]['status'] ==
                                              true
                                          ? Color(0xffF7F7F7)
                                          : AppColor.themeColor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              2 /
                                              100,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              17 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              17 /
                                              100,
                                          child: Image.asset(
                                            categoriesList[index]['image'],
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 2),
                                          child: Text(
                                            categoriesList[index]['name'],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: AppFont.fontFamily,
                                                color: categoriesList[index]
                                                            ['status'] ==
                                                        true
                                                    ? Colors.black
                                                    : Colors.white,
                                                fontWeight: FontWeight.w600),
                                            maxLines: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 95 / 100,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 5 / 100,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  1.8 /
                                  100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 93 / 100,
                              child: Text(
                                AppLanguage.recentviewdText[language],
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: AppFont.fontFamily,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                maxLines: 1,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  1.8 /
                                  100,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Wrap(
                                      children: [
                                        ...List.generate(
                                          recentlyviewedList.length,
                                          (index) => Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      47 /
                                                      100,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      15 /
                                                      100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14), //<-SEE HERE

                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                        vendorsList[index]
                                                            ['image'],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.5 /
                                                      100,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              40 /
                                                              100,
                                                      child: Text(
                                                        recentlyviewedList[
                                                                index]
                                                            ['customerName'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        maxLines: 1,
                                                      ),
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
                                                        AppImage.starfillIcon,
                                                      ),
                                                    ),
                                                    Text(
                                                      " (5)",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.3 /
                                                      100,
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      47 /
                                                      100,
                                                  child: Text(
                                                    recentlyviewedList[index]
                                                        ['service'],
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        color:
                                                            AppColor.themeColor,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                    maxLines: 1,
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
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            3.5 /
                                                            100,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            3.5 /
                                                            100,
                                                        child: Image.asset(
                                                          AppImage.locationIcon,
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
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            45 /
                                                            100,
                                                        child: Text(
                                                          recentlyviewedList[
                                                              index]['address'],
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              fontFamily: AppFont
                                                                  .fontFamily,
                                                              color: Color(
                                                                  0xff616161),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                          maxLines: 1,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1.5 /
                                                      100,
                                                ),
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 8,
                                                            vertical: 5),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          AppColor.themeColor,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  25)),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      AppLanguage
                                                              .sendRequestText[
                                                          language],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                              height:
                                  MediaQuery.of(context).size.height * 3 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 92 / 100,
                              child: Text(
                                AppLanguage.serviceforyouText[language],
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: AppFont.fontFamily,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                maxLines: 1,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.8 /
                                  100,
                            ),
                            Wrap(
                              children: [
                                ...List.generate(
                                  vendorsList.length,
                                  (index) => Container(
                                    width: MediaQuery.of(context).size.width *
                                        47 /
                                        100,
                                    margin: EdgeInsets.symmetric(vertical: 11),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              42 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              15 /
                                              100,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.5 /
                                              100,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  35 /
                                                  100,
                                              child: Text(
                                                vendorsList[index]
                                                    ['customerName'],
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3 /
                                              100,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              40 /
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
                                                    40 /
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1.5 /
                                              100,
                                        ),
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                27 /
                                                100,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                              color: AppColor.themeColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              AppLanguage
                                                  .sendRequestText[language],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10),
                                            )),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 7 / 100,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: const AppFooter(
          selectedMenu: BottomMenus.services, notificationCount: 0),
    );
  }
}
