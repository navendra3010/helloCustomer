import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

class VendorServices extends StatefulWidget {
  static String routeName = './VendorServices';
  const VendorServices({super.key});

  @override
  State<VendorServices> createState() => _VendorServicesState();
}

class _VendorServicesState extends State<VendorServices> {
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
        title: Text(AppLanguage.services[language],
            style: AppConstant.appBarTitleStyle),
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 3 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      AppLanguage.service1[language],
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily,
                          color: Colors.black),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      AppLanguage.service2[language],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily,
                          color: Colors.black),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      AppLanguage.service3[language],
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily,
                          color: Colors.black),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      AppLanguage.service4[language],
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily,
                          color: Colors.black),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      AppLanguage.service5[language],
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily,
                          color: Colors.black),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      AppLanguage.service6[language],
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily,
                          color: Colors.black),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      AppLanguage.service7[language],
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily,
                          color: Colors.black),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      AppLanguage.service8[language],
                      //textAlign: TextAlign.,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2 / 100,
                    height: MediaQuery.of(context).size.width * 1.2 / 100,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Text(
                      AppLanguage.service9[language],
                      //textAlign: TextAlign.,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
