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

class MostPopularProductsScreen extends StatefulWidget {
  static String routeName = './MostPopularProductsScreen';

  const MostPopularProductsScreen({super.key});

  @override
  State<MostPopularProductsScreen> createState() =>
      _MostPopularVendorsScreenState();
}

class _MostPopularVendorsScreenState extends State<MostPopularProductsScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<dynamic> produtList = <dynamic>[
    {
      "image": "./assets/icons/productImage.png",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$2400",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Cleaning"
    },
     {
      "image": "./assets/icons/ProductImahe1.png",
      "productName": "Benelave by Hind ware Volga Pillar Tap...",
      "price": "\$1350",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
     {
      "image": "./assets/icons/productImage.png",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
     {
      "image": "./assets/icons/ProductImahe1.png",
      "productName": "Benelave by Hind ware Volga Pillar Tap...",
      "price": "\$1200",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
    },
     {
      "image": "./assets/icons/productImage.png",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "price": "\$1300",
      "address": "22501 STYLES ST WOODLAND HILLS..",
      "service": "Plumber"
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
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 8 / 100,
                        height: MediaQuery.of(context).size.width * 8 / 100,
                        child: Image.asset(
                          AppImage.backIcon,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 3 / 100,
                    ),
                    Container(
                      child: Text(
                        AppLanguage.mostpopularpropductsText[language],
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
                height: MediaQuery.of(context).size.height * 3 / 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 75 / 100,
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
                              hintText:
                                  AppLanguage.searchProductsText[language],
                              hintStyle: AppConstant.textFilledStyle),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 14 / 100,
                      height: MediaQuery.of(context).size.width * 14 / 100,
                      child:
                          Image.asset(AppImage.filterIcon, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 94 / 100,
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 5 / 100,
                    ),
                    child: Column(
                      children: [
                        Wrap(
                          children: [
                            ...List.generate(
                              produtList.length,
                              (index) => Container(
                                width: MediaQuery.of(context).size.width *
                                    47 /
                                    100,
                                margin: EdgeInsets.symmetric(vertical: 11),
                                child:
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                         height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                15 /
                                                100,
                                                  width: MediaQuery.of(context).size.width *
                                    42 /
                                    100,
                                    decoration: BoxDecoration(
                                      color:Color(0xffF7F7F7),
                                                borderRadius: BorderRadius.circular(
                                                    14)),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width:
                                                  MediaQuery.of(context).size.width *
                                                      22 /
                                                      100,
                                              height:
                                                  MediaQuery.of(context).size.width *
                                                      22/
                                                      100,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    14), //<-SEE HERE

                                                image: DecorationImage(
                                                  fit: BoxFit.contain,
                                                  image: AssetImage(
                                                    produtList[index]['image'],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
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
                                                35 /
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
                                                40 /
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
                                                40 /
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
                                          width:
                                            MediaQuery.of(context).size.width *
                                                27 /
                                                100,
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 7 / 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
