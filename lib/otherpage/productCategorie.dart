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

class ProductScreenCategorie extends StatefulWidget {
  static String routeName = './ProductScreen';

  const ProductScreenCategorie({super.key});

  @override
  State<ProductScreenCategorie> createState() => _ProductScreenCategorieState();
}

class _ProductScreenCategorieState extends State<ProductScreenCategorie> {
  @override
  void initState() {
    super.initState();
  }

  List<dynamic> categoriesList = <dynamic>[
    {
      "image": "./assets/icons/Icon_homehealthcare.png",
      "name": "Home Care& Maintenance",
      "status":false,
    },
    {"image": "./assets/icons/Icon_scurity.png", "name": "Security Services", "status":true,},
    {"image": "./assets/icons/Icon_childcare.png", "name": "Child Care Services", "status":true,},
    {"image": "./assets/icons/Iconhealthcare.png", "name": "HealthCare", "status":true,},
    {"image": "./assets/icons/Icon_carservice.png", "name": "Car Rental Services", "status":true,},
    {
      "image": "./assets/icons/Icon_eletoricity.png",
      "name": "Food Delivery Services", "status":true,
    },
    {"image": "./assets/icons/Icon_eletoricity.png", "name": "Electronics Repair", "status":true,},
    {
      "image": "./assets/icons/Icon_cookservice.png",
      "name": "Cooking/ChefServices.",
      "status":true,
    },
  ];



  selectcategory(index) {
    List list = categoriesList;

    for (var i = 0; i < list.length; i++) {
      if (i == index) {
        list[i]["status"] = !list[i]["status"];
      }
    }
    setState(() {
      categoriesList = list;
    });
  }

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
                        AppLanguage.categoriesText[language],
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
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 94 / 100,
                    child: Wrap(
                      children: [
                        ...List.generate(
                          categoriesList.length,
                          (index) =>
                          
                           GestureDetector(
                            onTap: (){
                              // selectcategory(index);
                            },
                             child: Container(
                              width: MediaQuery.of(context).size.width * 28/ 100,
                              margin: EdgeInsets.symmetric(vertical: 8,horizontal: 6 ),
                              height: MediaQuery.of(context).size.height * 18 / 100,
                              
                               decoration:  BoxDecoration(
                                color: categoriesList[index]['status']==true? Color(0xffF7F7F7):AppColor.themeColor,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                           
                              child: Column(
                              
                                children: [
                                   SizedBox(
                                             height: MediaQuery.of(context).size.height * 2 / 100,
                                           ),
                                  Container(
                                  
                                    width: MediaQuery.of(context).size.width *
                                        17 /
                                        100,
                                    height: MediaQuery.of(context).size.width *
                                        17/
                                        100,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10), //<-SEE HERE
                                      
                                      image: DecorationImage(
                                        
                                        fit: BoxFit.cover,
                              
                                        image: AssetImage(
                                          categoriesList[index]['image']
                                          ,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.5 /
                                        100,
                                  ),
                                  Container(
                                     width: MediaQuery.of(context).size.width *
                                        30 /
                                        100,
                                   margin: EdgeInsets.symmetric(horizontal: 2 ),
                                    child: Text(
                                      categoriesList[index]['name'],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: AppFont.fontFamily,
                                          color: categoriesList[index]['status']==true? Colors.black:Colors.white,
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
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
