import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:hellocustomer/utilities/app_button.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/view/authentication/otp_verify_screen.dart';
import 'package:hellocustomer/view/authentication/privacy_policy_screen.dart';
import 'package:hellocustomer/view/authentication/terms_conditions_screen.dart';

import '../../utilities/app_constant.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_loader.dart';

class Signup extends StatefulWidget {
  static String routeName = './Signup';
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isCheckBoxValue = false;
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  bool isApiCalling = false;
  bool isClick = false;

  TextEditingController fullNameTextEditingController = TextEditingController();

  TextEditingController emailTextEditingController = TextEditingController();

  TextEditingController passwordTextEditingController = TextEditingController();

  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
        inAsyncCall: isApiCalling,
        opacity: 0.5,
        child: _buildUIScreen(context));
  }

  Widget _buildUIScreen(BuildContext context) {
    //----------------------signup-------------------------------------
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width * 100 / 100,
            height: MediaQuery.of(context).size.height * 100 / 100,
            color: AppColor.themeColor,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 100 / 100,
                      height: MediaQuery.of(context).size.height * 87 / 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                      //color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100),
                          Container(
                              width:
                                  MediaQuery.of(context).size.width * 85 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 16 / 100,
                              alignment: Alignment.centerLeft,
                              child: Image.asset(AppImage.appLogoIcon)),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 2 / 100),
                          Container(
                            width: MediaQuery.of(context).size.width * 85 / 100,
                            //padding: EdgeInsets.all(5),
                            child: Text(
                              AppLanguage.letgetstarted[language],
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.primaryColor),
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.5 /
                                  100),
                          Container(
                            width: MediaQuery.of(context).size.width * 85 / 100,
                            child: Text(
                              AppLanguage.createAccountMessage[language],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.greyLightColor),
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  2.5 /
                                  100),
                          Center(
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 85 / 100,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: TextFormField(
                                // inputFormatters: [maskFormatter],
                                style: const TextStyle(
                                    height: 0.9, color: Colors.black),
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.text,

                                maxLength: AppConstant.fullNameText,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    prefixIcon: IconButton(
                                      icon: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4.2 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                2.2 /
                                                100,
                                        padding: EdgeInsets.only(bottom: 2),
                                        child: Image.asset(
                                          AppImage.personIcon,
                                          //fit: BoxFit.cover,
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                    fillColor: AppColor.textFieldColor,
                                    filled: true,
                                    counterText: '',
                                    hintText: "Name",
                                    hintStyle: AppConstant.textFilledStyle),
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100),
                          Center(
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 85 / 100,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: TextFormField(
                                // inputFormatters: [maskFormatter],
                                maxLines: 1,
                                style: const TextStyle(
                                    height: 0.9, color: Colors.black),
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.phone,

                                maxLength: AppConstant.mobileMaxLenth,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    prefixIcon: IconButton(
                                      icon: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4.2 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                2.3 /
                                                100,
                                        padding: EdgeInsets.only(bottom: 2.1),
                                        child: Image.asset(
                                          AppImage.callIcon,
                                          //fit: BoxFit.cover,
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                    fillColor: AppColor.textFieldColor,
                                    filled: true,
                                    counterText: '',
                                    hintText: "Mobile Number",
                                    hintStyle: AppConstant.textFilledStyle),
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100),
                          Center(
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 85 / 100,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: TextFormField(
                                // inputFormatters: [maskFormatter],
                                maxLines: 1,
                                style: const TextStyle(
                                    height: 0.9, color: Colors.black),
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.emailAddress,

                                maxLength: AppConstant.emailMaxLength,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    prefixIcon: IconButton(
                                      icon: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                4 /
                                                100,
                                        padding: EdgeInsets.only(bottom: 3.2),
                                        child: Image.asset(
                                          AppImage.mailIcon,
                                          //fit: BoxFit.cover,
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                    fillColor: AppColor.textFieldColor,
                                    filled: true,
                                    counterText: '',
                                    hintText: "Email",
                                    hintStyle: AppConstant.textFilledStyle),
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100),
                          Center(
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 85 / 100,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: TextFormField(
                                // inputFormatters: [maskFormatter],
                                maxLines: 1,
                                style: const TextStyle(
                                    height: 0.9, color: Colors.black),
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.text,
                                obscureText: isPasswordVisible,
                                maxLength: AppConstant.passwordMaxLength,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    prefixIcon: IconButton(
                                      icon: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4.2 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                4 /
                                                100,
                                        padding: EdgeInsets.only(bottom: 3.5),
                                        child: Image.asset(
                                          AppImage.keyIcon,
                                          //fit: BoxFit.cover,
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                    suffixIcon: IconButton(
                                      icon: SizedBox(
                                        child: Text(
                                          isPasswordVisible == true
                                              ? "Show  "
                                              : "Hide  ",
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isPasswordVisible =
                                              !isPasswordVisible;
                                        });
                                      },
                                    ),
                                    fillColor: AppColor.textFieldColor,
                                    filled: true,
                                    counterText: '',
                                    hintText: "Password",
                                    hintStyle: AppConstant.textFilledStyle),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  1.5 /
                                  100),
                          Center(
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 85 / 100,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: TextFormField(
                                // inputFormatters: [maskFormatter],
                                maxLines: 1,
                                style: const TextStyle(
                                    height: 0.9, color: Colors.black),
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.text,
                                obscureText: isConfirmPasswordVisible,
                                maxLength: AppConstant.passwordMaxLength,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.textFieldColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    prefixIcon: IconButton(
                                      icon: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4.2 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                4 /
                                                100,
                                        padding: EdgeInsets.only(bottom: 3.5),
                                        child: Image.asset(
                                          AppImage.keyIcon,
                                          // fit: BoxFit.cover,
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                    suffixIcon: IconButton(
                                      icon: SizedBox(
                                        child: Text(
                                          isConfirmPasswordVisible == true
                                              ? "Show  "
                                              : "Hide  ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isConfirmPasswordVisible =
                                              !isConfirmPasswordVisible;
                                        });
                                      },
                                    ),
                                    fillColor: AppColor.textFieldColor,
                                    filled: true,
                                    counterText: '',
                                    hintText: "Confirm Password",
                                    hintStyle: AppConstant.textFilledStyle),
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 2 / 100),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isCheckBoxValue = !isCheckBoxValue;
                              });
                            },
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 85 / 100,
                              child: Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                    height: MediaQuery.of(context).size.height *
                                        2.5 /
                                        100,
                                    child: Checkbox(
                                      value: this.isCheckBoxValue,
                                      onChanged: (isCheckBoxValue) {
                                        setState(() {
                                          this.isCheckBoxValue =
                                              isCheckBoxValue!;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          1 /
                                          100),
                                  Container(
                                    child: Text(
                                      AppLanguage.iAcceptText[language],
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColor.primaryColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TermsAndConditions()));
                                    },
                                    child: Container(
                                      child: Text(AppLanguage.tncText[language],
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: AppFont.fontFamily,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.primaryColor,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationThickness: 2,
                                          )),
                                    ),
                                  ),
                                  Container(
                                    child: Text(AppLanguage.andsText[language],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.primaryColor)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PrivacyPolicy()));
                                    },
                                    child: Container(
                                      child: Text(
                                          AppLanguage
                                              .privacyPolicyText[language],
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.primaryColor,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationThickness: 2,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 3 / 100),
                          AppButton(
                              text: AppLanguage.createAccount[language],
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OtpVerify()));
                              }),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 6 / 100),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100),
                  Container(
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            AppLanguage.alreadyHaveAccountTxt[language],
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1 / 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Text(
                              AppLanguage.signinButtonText[language],
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
