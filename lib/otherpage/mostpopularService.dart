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
import 'serviceEmploye.dart';

class MostPopularServiceScreen extends StatefulWidget {
  static String routeName = './MostPopularServiceScreen';

  const MostPopularServiceScreen({super.key});

  @override
  State<MostPopularServiceScreen> createState() =>
      _MostPopularServiceScreenState();
}

class _MostPopularServiceScreenState extends State<MostPopularServiceScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<dynamic> populerserviceList = <dynamic>[
    {
      "image": "./assets/icons/full-shot-people-cleaning-office.jpg",
      "name": "Cleaning Service"
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
    {
      "image":
          "./assets/icons/groom-bride-s-wedding-table-decorated-with-flowers-candles.jpg",
      "name": "Decoration services"
    },
    {
      "image": "./assets/icons/happy-teacher-with-students-background.jpg",
      "name": "Teaching services"
    },
    {
      "image": "./assets/icons/full-shot-people-cleaning-office.jpg",
      "name": "Cleaning Service"
    },
    {
      "image": "./assets/icons/carpenter-cutting-mdf-board-inside-workshop.jpg",
      "name": "Capenter Service"
    },
    {
      "image": "./assets/icons/happy-teacher-with-students-background.jpg",
      "name": "Teaching services"
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
                        AppLanguage.mostpopularserviceTest[language],
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
                        width: MediaQuery.of(context).size.width * 90 / 100,
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

                    // Container(
                    //   width: MediaQuery.of(context).size.width * 12 / 100,
                    //   height: MediaQuery.of(context).size.width * 12 / 100,
                    //   child: Image.asset(AppImage.productIcon,
                    //       fit: BoxFit.cover),
                    // ),
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
                              populerserviceList.length,
                              (index) => GestureDetector(
                                onTap: () {
                                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ServiceEmployeScreen(),
                                  ));
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      47 /
                                      100,
                                  margin: EdgeInsets.symmetric(vertical: 11),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width *
                                            40 /
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
                                            40 /
                                            100,
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
