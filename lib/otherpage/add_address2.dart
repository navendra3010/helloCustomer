import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_button.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

import 'add_address3.dart';

class AddAddress2 extends StatefulWidget {
  static String routeName = './AddAddress2';
  const AddAddress2({super.key});

  @override
  State<AddAddress2> createState() => _AddAddress2State();
}

class _AddAddress2State extends State<AddAddress2> {
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
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 35 / 100,
              child: Image.asset(
                AppImage.mapIcon,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  // inputFormatters: [maskFormatter],
                  style: const TextStyle(height: 0.9, color: Colors.black),
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.greyLightColor),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.greyLightColor),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.greyLightColor),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      prefixIcon: IconButton(
                        icon: Container(
                          width: MediaQuery.of(context).size.width * 5.5 / 100,
                          height: MediaQuery.of(context).size.height * 3 / 100,
                          padding: EdgeInsets.only(bottom: 3),
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
                      hintText: "Search Location",
                      hintStyle: AppConstant.textFilledStyle),
                ),
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
                  Container(
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    height: MediaQuery.of(context).size.height * 5 / 100,
                    color: Color(0xff7FB5F4).withOpacity(0.22),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 10 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 5 / 100,
                          height: MediaQuery.of(context).size.height * 5 / 100,
                          child: Image.asset(
                            AppImage.currentLocationIcon,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 3 / 100,
                        ),
                        Text(
                          AppLanguage.currentLocationText[language],
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: AppFont.fontFamily,
                              color: Color(0xff266FC5),
                              fontWeight: FontWeight.w600),
                        )
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
                          width: MediaQuery.of(context).size.width * 60 / 100,
                          child: Text(
                            "A 87 Jln Teratai 10 Taman Jaya",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: AppFont.fontFamily,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppColor.greyLightColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Text(
                            AppLanguage.changeText[language],
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: AppFont.fontFamily,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2 / 100,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 85 / 100,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        // inputFormatters: [maskFormatter],
                        style:
                            const TextStyle(height: 0.9, color: Colors.black),
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.number,

                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.textFieldColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.textFieldColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.textFieldColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            fillColor: AppColor.textFieldColor,
                            filled: true,
                            counterText: '',
                            hintText: "Flat No.",
                            hintStyle: AppConstant.textFilledStyle),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 85 / 100,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        // inputFormatters: [maskFormatter],
                        style:
                            const TextStyle(height: 0.9, color: Colors.black),
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.text,

                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.textFieldColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.textFieldColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.textFieldColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            fillColor: AppColor.textFieldColor,
                            filled: true,
                            counterText: '',
                            hintText: "Landmark",
                            hintStyle: AppConstant.textFilledStyle),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 85 / 100,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        // inputFormatters: [maskFormatter],
                        style:
                            const TextStyle(height: 0.9, color: Colors.black),
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.text,

                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.textFieldColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.textFieldColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.textFieldColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            fillColor: AppColor.textFieldColor,
                            filled: true,
                            counterText: '',
                            hintText: "Address Type",
                            hintStyle: AppConstant.textFilledStyle),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2 / 100,
                  ),
                  AppButton(
                      text: AppLanguage.addAdressText[language],
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddAddress3(),
                            ));
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 10 / 100,
                  ),
                ],
              )),
            )
          ],
        ),
      )),
    );
  }
}
