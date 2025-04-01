import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_button.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

class SendRequest extends StatefulWidget {
  static String routeName = './SendRequest';
  const SendRequest({super.key});

  @override
  State<SendRequest> createState() => _SendRequestState();
}

class _SendRequestState extends State<SendRequest> {
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
        title: Text(AppLanguage.sendRequestText[language],
            style: AppConstant.appBarTitleStyle),
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 3 / 100,
              ),
              Center(
                child: CircleAvatar(
                  radius: 52, // Image radius
                  backgroundImage: AssetImage(AppImage.userImage),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 50 / 100,
                alignment: Alignment.center,
                child: Text(
                  "Andrew Jonas",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFont.fontFamily,
                      color: Colors.black),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cleaning",
                      style: TextStyle(
                          fontSize: 13,
                          height: 1.8,
                          fontWeight: FontWeight.w600,
                          color: AppColor.themeColor),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 2 / 100,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1.2 / 100,
                      height: MediaQuery.of(context).size.width * 1.2 / 100,
                      margin: EdgeInsets.only(top: 3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 2 / 100,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 3.5 / 100,
                      height: MediaQuery.of(context).size.width * 4 / 100,
                      child: Image.asset(AppImage.starIcon),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1 / 100,
                    ),
                    Text("(5.0)",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: AppFont.fontFamily,
                            color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 5 / 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                height: MediaQuery.of(context).size.height * 7 / 100,
                // alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color.fromRGBO(161, 171, 184, 1),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text("Service",
                              style: AppConstant.textFilledStyle)),
                      Container(
                        width: MediaQuery.of(context).size.width * 7 / 100,
                        height: MediaQuery.of(context).size.width * 5 / 100,
                        child: Image.asset(
                          AppImage.forwardArrowblackIcon,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 100,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  height: MediaQuery.of(context).size.height * 7 / 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.gray2,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Address", style: AppConstant.textFilledStyle),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 7 / 100,
                          height: MediaQuery.of(context).size.width * 5 / 100,
                          child: Image.asset(
                            AppImage.forwardArrowblackIcon,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 100,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  //height: MediaQuery.of(context).size.height * 7 / 100,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColor.textFieldColor),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.gray2),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.gray2),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        counterText: '',
                        hintText: "Work Description",
                        hintStyle: AppConstant.textFilledStyle),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 13 / 100,
              ),
              AppButton(
                  text: AppLanguage.sendRequestText[language],
                  onPress: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 100,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
