import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import '../../utilities/app_button.dart';

import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_snackbar_toast_message.dart';
import 'profile_setting.dart';

class ContactUs extends StatefulWidget {
  static String routeName = './ContactUs';

  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController fullNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController messageTextEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  contactUsUserValidation(
      String userFullName, String userEmail, String userMessage) async {
    if (userFullName.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.fullNameMessage[language]);
      return false;
    } else if (userEmail.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.emailMessage[language]);
      return false;
    } else if (!AppConstant.emailValidatorRegExp.hasMatch(userEmail)) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.emailValidMessage[language]);
      return false;
    } else if (userMessage.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.descriptionMessage[language]);
      return false;
    } else {
      contactUsUserApiCall(userFullName, userEmail, userMessage);
    }
  }

  contactUsUserApiCall(
      String userFullName, String userEmail, String userMessage) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Setting()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Setting()),
                    );
                  },
                )),
            title: Text(AppLanguage.contactUsText[language],
                style: AppConstant.appBarTitleStyle),
          ),
          body: SafeArea(
              child: Container(
                  width: MediaQuery.of(context).size.width * 100 / 100,
                  height: MediaQuery.of(context).size.height * 100 / 100,
                  color: Colors.white,
                  child: Column(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
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
                                                2 /
                                                100,
                                        margin: EdgeInsets.only(bottom: 4.5),
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
                                                4.1 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                6 /
                                                100,
                                        padding: EdgeInsets.only(bottom: 3),
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
                          Container(
                            width: MediaQuery.of(context).size.width * 85 / 100,
                            height:
                                MediaQuery.of(context).size.height * 20 / 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: AppColor.textFieldColor),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      3.5 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      4.3 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      13 /
                                      100,

                                  alignment: Alignment.topCenter,
                                  //color: Colors.blue,
                                  child: Image.asset(
                                    AppImage.editProfileIcon,
                                    color: AppColor.gray2,
                                    //fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      75 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      20 /
                                      100,
                                  child: TextFormField(
                                    // inputFormatters: [maskFormatter],
                                    style: const TextStyle(
                                        height: 1.6, color: Colors.black),
                                    textAlignVertical: TextAlignVertical.center,
                                    keyboardType: TextInputType.text,

                                    maxLines: null,
                                    decoration: InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColor.textFieldColor),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColor.textFieldColor),
                                        ),
                                        counterText: '',
                                        hintText: "Description",
                                        hintStyle: AppConstant.textFilledStyle),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100),
                          AppButton(
                              text: AppLanguage.submitButtonText[language],
                              onPress: () {
                                Navigator.pop(context);
                              })
                        ],
                      ),
                    ),
                  ])))),
    );
  }
}
