import 'package:flutter/material.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_snackbar_toast_message.dart';
import 'profile_setting.dart';


class DeleteAccount extends StatefulWidget {
  static String routeName = './DeleteAccount';
  const DeleteAccount({super.key});

  @override
  _DeleteAccountState createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  TextEditingController messageTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

 

  deleteAccountUserValidation(String userMessage) async {
    if (userMessage.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.descriptionMessage[language]);
      return false;
    } else {
      deleteAccountUserApiCall(userMessage);
    }
  }

  deleteAccountUserApiCall(String userMessage) {
    // Navigator.pushNamed(context, Sorry.routeName);
  }
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
                    MaterialPageRoute(builder: (context) => Setting()),
                  );
                },
              )),
          title: Text(AppLanguage.deleteAccount[language],
              style: AppConstant.appBarTitleStyle),
        ),
     
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100),
                     Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        // height: MediaQuery.of(context).size.height * 7 / 100,
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.multiline,
                          controller: messageTextEditingController,
                          maxLines: 5,
                          maxLength: AppConstant.messageMaxLenth,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              counterText: '',
                              hintText: AppLanguage.messageText[language],
                              hintStyle: AppConstant.textFilledStyle),
                        ),
                      ),
                    ),
                  
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 8 / 100,
                    ),
                    AppButton(
                      text: AppLanguage.submitButtonText[language],
                      onPress: () {
                        deleteAccountUserValidation(
                            messageTextEditingController.text);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
