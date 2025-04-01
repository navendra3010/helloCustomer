import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_snackbar_toast_message.dart';
import 'profile_setting.dart';

class ChangePassword extends StatefulWidget {
  static String routeName = './ChangePassword';
  const ChangePassword({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController currentPasswordTextEditingController =
      TextEditingController();

  TextEditingController newPasswordTextEditingController =
      TextEditingController();

  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  bool isPasswordVisible = true;
  bool isNewPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  changePasswordUserValidation(String currentPassword, String newPassword,
      String confirmPassword) async {
    if (currentPassword.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.currentPasswordMsg[language]);
      return false;
    }
    if (currentPassword.length < 6) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.passwordMinMessage[language]);
      return false;
    }
    if (newPassword.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.newPasswordMsg[language]);
      return false;
    }
    if (newPassword.length < 6) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.passwordMinMessage[language]);
      return false;
    }
    if (confirmPassword.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.confirmPasswordMsg[language]);
      return false;
    }
    if (confirmPassword.length < 6) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.passwordMinMessage[language]);
      return false;
    } else {
      changePasswordUserApiCall(currentPassword, newPassword, confirmPassword);
    }
  }

  changePasswordUserApiCall(
      String currentPassword, String newPassword, String confirmPassword) {
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
          title: Text(AppLanguage.changePassword[language],
              style: AppConstant.appBarTitleStyle),
        ),
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width * 100 / 100,
            height: MediaQuery.of(context).size.height * 100 / 100,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),
                SingleChildScrollView(
                  child: Column(children: [
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
                          obscureText: isPasswordVisible,
                          maxLength: AppConstant.passwordMaxLength,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
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
                              prefixIcon: IconButton(
                                icon: Container(
                                  width: MediaQuery.of(context).size.width *
                                      4 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  margin: EdgeInsets.only(bottom: 3),
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
                                    isPasswordVisible = !isPasswordVisible;
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
                        height: MediaQuery.of(context).size.height * 2 / 100),
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
                          obscureText: isNewPasswordVisible,
                          maxLength: AppConstant.passwordMaxLength,
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
                              prefixIcon: IconButton(
                                icon: Container(
                                  width: MediaQuery.of(context).size.width *
                                      4 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  margin: EdgeInsets.only(bottom: 3),
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
                                    isNewPasswordVisible == true
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
                                    isNewPasswordVisible =
                                        !isNewPasswordVisible;
                                  });
                                },
                              ),
                              fillColor: AppColor.textFieldColor,
                              filled: true,
                              counterText: '',
                              hintText: "New Password",
                              hintStyle: AppConstant.textFilledStyle),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100),
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
                          obscureText: isConfirmPasswordVisible,
                          maxLength: AppConstant.passwordMaxLength,
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
                              prefixIcon: IconButton(
                                icon: Container(
                                  width: MediaQuery.of(context).size.width *
                                      4 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  margin: EdgeInsets.only(bottom: 3),
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
                                    style: const TextStyle(
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
                              hintText: "Confirm New Password",
                              hintStyle: AppConstant.textFilledStyle),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 3 / 100),
                    AppButton(
                        text: AppLanguage.changePassword[language],
                        onPress: () {
                          Navigator.pop(context);
                          // changePasswordUserValidation(
                          //     currentPasswordTextEditingController.text,
                          //     newPasswordTextEditingController.text,
                          //     confirmPasswordTextEditingController.text);
                        })
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
