import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/view/authentication/profile_setting.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utilities/app_button.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_snackbar_toast_message.dart';
import '../googlemap/location.dart';
import 'profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  static String routeName = './EditProfile';
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? _imageSelect;
  var base64Image;
  var fileName;
  late File _image;

  String location = "";
  String locationDetails = "NA";

  String imageController = "NA";

  TextEditingController firstNameTextEditingController =
      TextEditingController();

  TextEditingController lastNameTextEditingController = TextEditingController();

  TextEditingController emailTextEditingController = TextEditingController();

  TextEditingController mobileNumberTextEditingController =
      TextEditingController();

  String selectLocation = "NA";
  void initState() {
    super.initState();
    getUserDetails();
  }

  editProfileUserValidation(
    String firstName,
    String lastName,
    String email,
    String mobileNumber,
  ) async {
    if (firstName.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.firstNameMessage[language]);
      return false;
    } else if (lastName.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.lastNameMessage[language]);
      return false;
    } else if (email.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.emailMessage[language]);
      return false;
    } else if (!AppConstant.emailValidatorRegExp.hasMatch(email)) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.emailValidMessage[language]);
      return false;
    } else if (mobileNumber.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.mobileNumberMessage[language]);
      return false;
    } else if (mobileNumber.length < 10) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.mobilevalidMessage[language]);
      return false;
    } else if (selectLocation == "NA") {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.selectLoction[language]);
      return false;
    } else {
      editProfileUserApiCall(
        firstName,
        lastName,
        email,
        mobileNumber,
      );
    }
  }

  editProfileUserApiCall(
    String firstName,
    String lastName,
    String email,
    String mobileNumber,
  ) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const Profile()),
    // );
    print("Call Update Api");
  }

  Future<void> _imgFromCamera() async {
    dynamic image = await ImagePicker().pickImage(
        source: ImageSource.camera,
        maxHeight: 450.0,
        maxWidth: 450.0,
        imageQuality: 50);

    if (image != null) {
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _imageSelect = File(image!.path);
          fileName = image.path.split('/').last;
          var _btnActive = true;
        });
      });
    } else {
      setState(() {
        var _btnActive = false;
      });
    }

    Navigator.of(context).pop();
  }

  Future<void> _imgFromGallery() async {
    // ignore: deprecated_member_use
    dynamic image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxHeight: 450.0,
        maxWidth: 450.0,
        imageQuality: 50);

    if (image != null) {
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _imageSelect = File(image!.path);
          fileName = image.path.split('/').last;
          var _btnActive = true;
        });
      });
    } else {
      setState(() {
        var _btnActive = false;
      });
    }

    Navigator.of(context).pop();
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
                        MaterialPageRoute(
                            builder: (context) => const Setting()),
                      );
                    },
                  )),
              title: Text(AppLanguage.editProfile[language],
                  style: AppConstant.appBarTitleStyle),
            ),
            body: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 100 / 100,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Row(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 16 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 16 / 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.5, color: AppColor.themeColor),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 4,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage(AppImage.userImage),
                                ),
                              ),
                            ),
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 3 / 100,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        60 /
                                        100,
                                    child: Text(
                                      AppLanguage.profilePhotoText[language],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: AppFont.fontFamily,
                                          color: AppColor.primaryColor),
                                    ),
                                  ),
                                  Text(
                                    AppLanguage.changeProfileText[language],
                                    style: TextStyle(
                                        fontSize: 13,
                                        height: 1.6,
                                        color: AppColor.themeColor,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFont.fontFamily,
                                        decoration: TextDecoration.underline
                                        // fontFamily: AppFont.fontFamily
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 85 / 100,
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.textFieldColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.textFieldColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                prefixIcon: IconButton(
                                  icon: Container(
                                    width: MediaQuery.of(context).size.width *
                                        4.2 /
                                        100,
                                    height: MediaQuery.of(context).size.height *
                                        2.2 /
                                        100,
                                    padding: EdgeInsets.only(bottom: 3.5),
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
                          height: MediaQuery.of(context).size.height * 1 / 100),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 85 / 100,
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.textFieldColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.textFieldColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                prefixIcon: IconButton(
                                  icon: Container(
                                    width: MediaQuery.of(context).size.width *
                                        4.2 /
                                        100,
                                    height: MediaQuery.of(context).size.height *
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
                          height: MediaQuery.of(context).size.height * 1 / 100),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 85 / 100,
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.textFieldColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.textFieldColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                prefixIcon: IconButton(
                                  icon: Container(
                                    width: MediaQuery.of(context).size.width *
                                        4 /
                                        100,
                                    height: MediaQuery.of(context).size.height *
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
                          height: MediaQuery.of(context).size.height * 6 / 100),
                      AppButton(
                          text: AppLanguage.updateText[language],
                          onPress: () {
                            // editProfileUserValidation(
                            //     firstNameTextEditingController.text,
                            //     lastNameTextEditingController.text,
                            //     emailTextEditingController.text,
                            //     mobileNumberTextEditingController.text);
                            Navigator.pop(context);
                          }),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100),
                    ],
                  ),
                ),
              ),
            )));
  }

  imagePicker() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        setState(() {});
                        // Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      setState(() {});
                      // Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future<dynamic> getUserDetails() async {
    final prefs = await SharedPreferences.getInstance();
    dynamic locationDetails = prefs.getString("locationDetails");

    print(locationDetails);
    if (locationDetails != null) {
      dynamic data = json.decode(locationDetails);
      location = data['location'];

      print(locationDetails);
      print(data['location']);
    }
    setState(() {});
  }
}
