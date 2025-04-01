import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_button.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';
import 'package:hellocustomer/view/authentication/home_screen.dart';

class AddAddress3 extends StatefulWidget {
  static String routeName = './AddAddress3';
  const AddAddress3({super.key});

  @override
  State<AddAddress3> createState() => _AddAddress3State();
}

class _AddAddress3State extends State<AddAddress3> {
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
        title: Text(AppLanguage.addAdressText[language],
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
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 6 / 100,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Color(0xffD9D9D9), width: 1.0),
                      bottom:
                          BorderSide(color: Color(0xffD9D9D9), width: 1.0))),
              alignment: Alignment.center,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 4 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 4 / 100,
                    height: MediaQuery.of(context).size.width * 4 / 100,
                    child: Image.asset(AppImage.addIcon),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 3 / 100,
                  ),
                  Text(
                    AppLanguage.addAddressText[language],
                    style: TextStyle(
                        color: AppColor.themeColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFont.fontFamily),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Color(0xffD9D9D9), width: 1.0),
              )),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 4 / 100,
                          height: MediaQuery.of(context).size.width * 4 / 100,
                          child: Image.asset(AppImage.activeratidovtnIcon),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 2 / 100,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppFont.fontFamily),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 78 / 100,
                    child: Text(
                      "A 87 Jln Teratai 10 Taman Jaya, Malaysia",
                      style: TextStyle(
                          color: Color(0xff757474),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9 / 100,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 60 / 100,
            ),
            AppButton(
                text: AppLanguage.continueText[language],
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
                })
          ],
        ),
      )),
    );
  }
}
