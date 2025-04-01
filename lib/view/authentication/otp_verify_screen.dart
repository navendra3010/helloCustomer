import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/view/authentication/profile_setting.dart';
import '../../otherpage/add_address1.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_snackbar_toast_message.dart';
import 'home_screen.dart';
import 'reset_password.dart';

class OtpVerify extends StatefulWidget {
  static String routeName = './OtpVerify';
  const OtpVerify({super.key});

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  GlobalKey<FormState> _forgotOtpFormKey = new GlobalKey<FormState>();

  FocusNode? pin1FocusNode;
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;

  TextEditingController firstInputController = TextEditingController();
  TextEditingController secondInputController = TextEditingController();
  TextEditingController thirdInputController = TextEditingController();
  TextEditingController forthInputController = TextEditingController();
  TextEditingController fifthInputController = TextEditingController();

  String firstInput = '';
  String secondInput = '';
  String thirdInput = '';
  String forthInput = '';
  String fifthInput = '';

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
  }

  // forgotOtpUserValidation(String firstInput, String secondInput,
  //     String thirdInput, String fourthInput) async {
  //   var otpInput = (firstInput + secondInput + thirdInput + fourthInput);
  //   if (otpInput.isEmpty) {
  //     SnackBarToastMessage.showSnackBar(
  //         context, AppLanguage.otpMessage[language]);
  //     return false;
  //   } else if (otpInput.length < 4) {
  //     SnackBarToastMessage.showSnackBar(
  //         context, AppLanguage.otpMinLenthMessage[language]);
  //     return false;
  //   } else {
  //     forgotOtpUserApiCall(firstInput, secondInput, thirdInput, fourthInput);
  //   }
  // }

  // forgotOtpUserApiCall(String firstInput, String secondInput, String thirdInput,
  //     String fourthInput) async {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => Home()),
  //   );
  // Navigator.pushNamed(
  //   context,
  //   Home.routeName,
  //   arguments: SuccessClass(
  //     message: "Hello",
  //     title: "Hello World",
  //   ),
  // );

  //   print("Call Update Api");
  // }

  @override
  void dispose() {
    super.dispose();
    pin1FocusNode!.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  void previousField(String value, FocusNode focusNode) {
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 100 / 100,
          decoration: const BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                key: _forgotOtpFormKey,
                child: Column(
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 6 / 100,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          AppImage.backIcon,
                          width: MediaQuery.of(context).size.width * 8 / 100,
                          height: MediaQuery.of(context).size.height * 8 / 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 80 / 100,
                        child: Text(
                          AppLanguage.otpVerificationText[language],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    Container(
                        //alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 80 / 100,
                        child: Text(
                          "We sent an SMS with a 5-digit code to your email: Alexandermathew@gmail.com. Please enter it so we can be sure that this email belongs to you.",
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 80 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 13 / 100,
                            height:
                                MediaQuery.of(context).size.height * 6 / 100,
                            child: Center(
                              child: TextFormField(
                                cursorColor: AppColor.greyLightColor,
                                autofocus: true,
                                readOnly: false,
                                focusNode: pin1FocusNode,
                                controller: firstInputController,
                                decoration: InputDecoration(
                                    counterText: '',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.greyLightColor,
                                          width: 1.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.greyLightColor,
                                          width: 1.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.greyLightColor,
                                          width: 1.0),
                                    ),
                                    contentPadding: EdgeInsets.all(10)),
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  // (firstInputController.text.length > 0)
                                  //     ? Colors.black
                                  //     : Colors.black
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                onTap: () {
                                  pin1FocusNode!.requestFocus();
                                },
                                onChanged: (value) {
                                  print(firstInputController.text.length);
                                  print(firstInputController.text);
                                  firstInputController.text = value;
                                  nextField(value, pin2FocusNode!);
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 13 / 100,
                            height:
                                MediaQuery.of(context).size.height * 6 / 100,
                            child: Center(
                              child: TextFormField(
                                cursorColor: AppColor.greyLightColor,
                                autofocus: true,
                                readOnly: false,
                                focusNode: pin2FocusNode,
                                controller: secondInputController,
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  contentPadding: EdgeInsets.all((10)),
                                ),
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        (firstInputController.text.length > 0)
                                            ? Colors.black
                                            : Colors.black),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                onTap: () {
                                  pin2FocusNode!.requestFocus();
                                },
                                onChanged: (value) {
                                  print(firstInputController.text.length);
                                  print(firstInputController.text);
                                  secondInputController.text = value;
                                  nextField(value, pin3FocusNode!);
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 13 / 100,
                            height:
                                MediaQuery.of(context).size.height * 6 / 100,
                            child: Center(
                              child: TextFormField(
                                cursorColor: AppColor.greyLightColor,
                                autofocus: true,
                                readOnly: false,
                                focusNode: pin3FocusNode,
                                controller: thirdInputController,
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  contentPadding: EdgeInsets.all((10)),
                                ),
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        (firstInputController.text.length > 0)
                                            ? Colors.black
                                            : Colors.black),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                onTap: () {
                                  pin3FocusNode!.requestFocus();
                                },
                                onChanged: (value) {
                                  print(firstInputController.text.length);
                                  print(firstInputController.text);
                                  thirdInputController.text = value;
                                  nextField(value, pin4FocusNode!);
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 13 / 100,
                            height:
                                MediaQuery.of(context).size.height * 6 / 100,
                            child: Center(
                              child: TextFormField(
                                cursorColor: AppColor.greyLightColor,
                                autofocus: true,
                                readOnly: false,
                                focusNode: pin4FocusNode,
                                controller: forthInputController,
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  contentPadding: EdgeInsets.all((10)),
                                ),
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        (firstInputController.text.length > 0)
                                            ? Colors.black
                                            : Colors.black),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                onTap: () {
                                  pin4FocusNode!.requestFocus();
                                },
                                onChanged: (value) {
                                  print(firstInputController.text.length);
                                  print(firstInputController.text);
                                  forthInputController.text = value;
                                  nextField(value, pin5FocusNode!);
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 13 / 100,
                            height:
                                MediaQuery.of(context).size.height * 6 / 100,
                            child: Center(
                              child: TextFormField(
                                cursorColor: AppColor.greyLightColor,
                                autofocus: true,
                                readOnly: false,
                                focusNode: pin5FocusNode,
                                controller: fifthInputController,
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.greyLightColor,
                                        width: 1.0),
                                  ),
                                  contentPadding: EdgeInsets.all((10)),
                                ),
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        (firstInputController.text.length > 0)
                                            ? Colors.black
                                            : Colors.black),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                onTap: () {},
                                onChanged: (value) {
                                  print(firstInputController.text.length);
                                  print(firstInputController.text);
                                  fifthInputController.text = value;
                                  nextField(value, pin1FocusNode!);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4.5 / 100,
                    ),
                    AppButton(
                        text: AppLanguage.verifyButtonText[language],
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddAddress1(),
                              ));
                          // forgotOtpUserValidation(
                          //     firstInputController.text,
                          //     secondInputController.text,
                          //     thirdInputController.text,
                          //     forthInputController.text);
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2.5 / 100,
                    ),
                    Container(
                        child: Text(
                      AppLanguage.noOtpText[language],
                      style: TextStyle(
                          color: AppColor.greyDarkColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _clearOtp();
                        });
                      },
                      child: Container(
                          child: Text(
                        AppLanguage.sendOtpAgain[language],
                        style: TextStyle(
                            color: Color(0xffB30000),
                            fontSize: 16,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: AppColor.themeColor,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          child: Text(
                            AppLanguage.changeEmail[language],
                            style: TextStyle(
                                color: AppColor.themeColor,
                                fontSize: 16,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w600),
                          )),
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

  void _clearOtp() {
    firstInputController.clear();
    secondInputController.clear();
    thirdInputController.clear();
    forthInputController.clear();
    fifthInputController.clear();
  }
}
