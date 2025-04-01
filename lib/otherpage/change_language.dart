import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

class ChangeLanguage extends StatefulWidget {
  static String routeName = './ChangeLanguage';

  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  int isLanguage = 1;
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
        title: Text(AppLanguage.changelangText[language],
            style: AppConstant.appBarTitleStyle),
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 2.5 / 100,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isLanguage = 1;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 85 / 100,
                height: MediaQuery.of(context).size.height * 7 / 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        AppLanguage.englishText[language],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: AppFont.fontFamily,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    (isLanguage == 1)
                        ? Container(
                            child: Image.asset(
                              AppImage.activeratidovtnIcon,
                              width:
                                  MediaQuery.of(context).size.width * 4.5 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 5 / 100,
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isLanguage = 2;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 85 / 100,
                height: MediaQuery.of(context).size.height * 7 / 100,
                //color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        AppLanguage.frenchText[language],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: AppFont.fontFamily,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    (isLanguage == 2)
                        ? Container(
                            child: Image.asset(
                              AppImage.activeratidovtnIcon,
                              width:
                                  MediaQuery.of(context).size.width * 4.5 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 5 / 100,
                            ),
                          )
                        : Container(),
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
