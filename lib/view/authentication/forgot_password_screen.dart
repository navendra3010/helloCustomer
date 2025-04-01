import 'package:flutter/material.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_snackbar_toast_message.dart';
import 'forgot_otp_verify_screen.dart';
import 'login_screen.dart';
import 'reset_password.dart';


class ForgotPassword extends StatefulWidget {
  static String routeName = './ForgotPassword';

  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  forgotPasswordUserValidation(
    String email,
  ) async {
    if (email.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.emailMessage[language]);
      return false;
    } 
     else if (!AppConstant.emailValidatorRegExp.hasMatch(email)) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.emailValidMessage[language]);
      return false;
    } else {
      forgotPasswordUserApiCall(email);
    }
  }

  forgotPasswordUserApiCall(
    String email,
  ) async {
     Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ForgotOtpVerify()),
          );
    print("Call Update Api");
  }

  @override
  // Widget build(BuildContext context) {
  //   return ProgressHUD(
  //       inAsyncCall: isApiCalling,
  //       opacity: 0.5,
  //       child: _buildUIScreen(context));
  // }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
         appBar: AppBar(
            centerTitle: true,
            elevation: 1,
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
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                )),
            title: Text(AppLanguage.forgotPasswordText[language],
                style: AppConstant.appBarTitleStyle),
          ),
        
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 100 / 100,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 8 / 100),
                  Container(
                    child: FlutterLogo(
                      size: 80,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 12 / 100),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: MediaQuery.of(context).size.height * 8 / 100,
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.emailAddress,
                        controller: emailTextEditingController,
                        maxLength: AppConstant.emailMaxLength,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Colors.white,
                            filled: true,
                            counterText: '',
                            hintText: 'Email',
                            hintStyle: AppConstant.textFilledStyle),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 4 / 100,
                  ),
                  AppButton(
                      text: AppLanguage.sendButtonText[language],
                      onPress: () {
                        forgotPasswordUserValidation(
                            emailTextEditingController.text);
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 3 / 100,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
