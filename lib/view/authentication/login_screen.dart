// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';

import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_loader.dart';

import 'home_screen.dart';
import 'signup_screen.dart';

class Login extends StatefulWidget {
  static String routeName = './Login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = true;
  bool isValue = false;
  bool isApiCalling = false;
  bool isCheck = false;
  int isRadioBtn = 0;
  bool isRemember = false;

  TextEditingController emailTextEditingController = TextEditingController();

  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
        inAsyncCall: isApiCalling,
        opacity: 0.5,
        child: _buildUIScreen(context));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget _buildUIScreen(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor:
          AppColor.secondryColor, // Change this to your desired color
    ));
    return WillPopScope(
      onWillPop: () {
        return _showAlertDialog(context);
      },
      child: GestureDetector(
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
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 100 / 100,
                          height: MediaQuery.of(context).size.height * 27 / 100,
                          child: Image.asset(AppImage.loginScreenImage,
                              fit: BoxFit.fill),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 3 / 100,
                          right: 20,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 25 / 100,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      3.5 /
                                      100,
                                  child: Image.asset(
                                    AppImage.flagIcon,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    AppLanguage.englishText[language],
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.2 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      3 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      3 /
                                      100,
                                  child: Image.asset(
                                    AppImage.downaerrowIcon,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top:
                                MediaQuery.of(context).size.height * 17.3 / 100,
                            left: 30,
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 20 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 10 / 100,
                              child: Image.asset(
                                AppImage.appLogoIcon,
                              ),
                            )),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 100 / 100,
                      height: MediaQuery.of(context).size.height * 58 / 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                      child: Column(
                        children: [
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2.5 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 85 / 100,
                            child: Text(
                              AppLanguage.signInText[language],
                              style: TextStyle(
                                  fontSize: 28,
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 85 / 100,
                            child: Text(
                              AppLanguage.signInMessage[language],
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.4,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFont.fontFamily,
                                  color: AppColor.greyLightColor),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 3 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 85 / 100,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: (() {
                                    setState(() {
                                      isRadioBtn = 0;
                                    });
                                  }),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4.5 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                4.5 /
                                                100,
                                        alignment: Alignment.bottomCenter,
                                        child: Image.asset(
                                          isRadioBtn == 0
                                              ? AppImage.activeratidovtnIcon
                                              : AppImage.inactiveratidovtnIcon,
                                          //fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                2 /
                                                100,
                                      ),
                                      Container(
                                        child: Text(
                                          AppLanguage.emailText[language],
                                          style: TextStyle(
                                              fontSize: 15,
                                              height: 1.4,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: AppFont.fontFamily,
                                              color: isRadioBtn == 0
                                                  ? Colors.black
                                                  : AppColor.greyLightColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      12 /
                                      100,
                                ),
                                GestureDetector(
                                  onTap: (() {
                                    setState(() {
                                      isRadioBtn = 1;
                                    });
                                  }),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4.5 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                4.5 /
                                                100,
                                        alignment: Alignment.bottomCenter,
                                        child: Image.asset(
                                          isRadioBtn == 1
                                              ? AppImage.activeratidovtnIcon
                                              : AppImage.inactiveratidovtnIcon,
                                          //fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                2 /
                                                100,
                                      ),
                                      Container(
                                        child: Text(
                                          AppLanguage
                                              .mobileNumberText[language],
                                          style: TextStyle(
                                              fontSize: 15,
                                              height: 1.4,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: AppFont.fontFamily,
                                              color: isRadioBtn == 1
                                                  ? Colors.black
                                                  : AppColor.greyLightColor),
                                        ),
                                      ),
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
                          if (isRadioBtn == 0)
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width *
                                    85 /
                                    100,
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: TextFormField(
                                  // inputFormatters: [maskFormatter],
                                  maxLines: 1,
                                  style: const TextStyle(
                                      height: 0.9, color: Colors.black),
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.emailAddress,

                                  maxLength: AppConstant.emailMaxLength,
                                  // onChanged: (value) {
                                  //   setState(() {
                                  //     this.isCheck = !isCheck;
                                  //   });
                                  // },

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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4.2 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              2.3 /
                                              100,
                                          padding: EdgeInsets.only(bottom: 3),
                                          child: Image.asset(
                                            AppImage.mailIcon,
                                            //fit: BoxFit.cover,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                      // suffixIcon: IconButton(
                                      //   icon: SizedBox(
                                      //     width: MediaQuery.of(context).size.width *
                                      //         4 /
                                      //         100,
                                      //     height:
                                      //         MediaQuery.of(context).size.height *
                                      //             2 /
                                      //             100,
                                      //     child: Image.asset(
                                      //       AppImage.rightIcon,
                                      //       //fit: BoxFit.cover,
                                      //     ),
                                      //   ),
                                      //   onPressed: () {},
                                      // ),
                                      fillColor: AppColor.textFieldColor,
                                      filled: true,
                                      counterText: '',
                                      hintText: "Email",
                                      hintStyle: AppConstant.textFilledStyle),
                                ),
                              ),
                            ),
                          if (isRadioBtn == 1)
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width *
                                    85 /
                                    100,
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: TextFormField(
                                  // inputFormatters: [maskFormatter],
                                  maxLines: 1,
                                  style: const TextStyle(
                                      height: 0.9, color: Colors.black),
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.number,

                                  maxLength: AppConstant.mobileMaxLenth,
                                  // onChanged: (value) {
                                  //   setState(() {
                                  //     this.isCheck = !isCheck;
                                  //   });
                                  // },

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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4.2 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              2.3 /
                                              100,
                                          padding: EdgeInsets.only(bottom: 4),
                                          child: Image.asset(
                                            AppImage.callIcon,
                                            //fit: BoxFit.cover,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                      // suffixIcon: IconButton(
                                      //   icon: SizedBox(
                                      //     width: MediaQuery.of(context).size.width *
                                      //         4 /
                                      //         100,
                                      //     height:
                                      //         MediaQuery.of(context).size.height *
                                      //             2 /
                                      //             100,
                                      //     child: Image.asset(
                                      //       AppImage.rightIcon,
                                      //       //fit: BoxFit.cover,
                                      //     ),
                                      //   ),
                                      //   onPressed: () {},
                                      // ),
                                      fillColor: AppColor.textFieldColor,
                                      filled: true,
                                      counterText: '',
                                      hintText: "Mobile",
                                      hintStyle: AppConstant.textFilledStyle),
                                ),
                              ),
                            ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1.5 / 100,
                          ),
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
                                                2.5 /
                                                100,
                                        padding: EdgeInsets.only(bottom: 3),
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
                                          style: TextStyle(
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
                            height:
                                MediaQuery.of(context).size.height * 1 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 85 / 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isRemember = !isRemember;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        child: Image.asset(isRemember
                                            ? AppImage.activeCheck
                                            : AppImage.inactiveCheckIcon),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                3 /
                                                100,
                                      ),
                                      Text(
                                        AppLanguage.rememberText[language],
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: AppColor.primaryColor,
                                            fontFamily: AppFont.fontFamily,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  AppLanguage.forgotPassword[language],
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: AppFont.fontFamily,
                                      color: AppColor.themeColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2.5 / 100,
                          ),
                          AppButton(
                              text: AppLanguage.signinButtonText[language],
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ));
                              }),
                        ],
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
                              AppLanguage.donthaveAccount[language],
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Signup(),
                                  ));
                            },
                            child: Container(
                              child: Text(
                                AppLanguage.createAccount[language],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: AppFont.fontFamily,
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
      ),
    );
  }

  _showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "No",
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes", style: TextStyle(color: Colors.black)),
      onPressed: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(AppLanguage.areYouSureText[language]),
      content: Text(AppLanguage.exitAppText[language]),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
