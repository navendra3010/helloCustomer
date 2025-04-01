import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_footer.dart';
import 'package:hellocustomer/view/authentication/edit_profile_screen.dart';

import '../../otherpage/change_language.dart';
import '../../otherpage/manage_address.dart';
import '../../otherpage/wallet.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import 'aboutUs_screen.dart';
import 'change_password.dart';
import 'contactus_screen.dart';
import 'delete_account.dart';

import 'login_screen.dart';
import 'privacy_policy_screen.dart';

import 'terms_conditions_screen.dart';
import 'package:share_plus/share_plus.dart';

class Setting extends StatefulWidget {
  static String routeName = './setting';

  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  String shareWith = "NA";
  shareApp(BuildContext context) async {
    var shareUrl = shareWith;
    final RenderBox box = context.findRenderObject() as RenderBox;
    await Share.share(shareUrl,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                height: MediaQuery.of(context).size.height * 5 / 100,
                child: Text(
                  AppLanguage.profileText[language],
                  style: AppConstant.appBarTitleStyle,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 17 / 100,
                      height: MediaQuery.of(context).size.width * 17 / 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.5, color: AppColor.themeColor),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 4,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(AppImage.userImage),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 3 / 100,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 60 / 100,
                            child: Text(
                              "Alexander Mathew",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColor.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppFont.fontFamily),
                            ),
                          ),
                          Text(
                            "+1 94950 08980",
                            style: TextStyle(
                              fontSize: 13,
                              height: 1.8,
                              color: AppColor.greyDarkColor,
                              fontWeight: FontWeight.w500,
                              // fontFamily: AppFont.fontFamily
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 3 / 100,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Text(
                          AppLanguage.myactivityText[language],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColor.primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1.5 / 100,
                      ),
                      SettingRow(
                        leadingIcon: AppImage.walletIcon,
                        title: AppLanguage.walletText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Wallet()),
                          );
                        },
                      ),
                      SettingRow(
                        leadingIcon: AppImage.locationIcon,
                        title: AppLanguage.manageAddressText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ManageAddress()),
                          );
                        },
                      ),
                      SettingRow(
                        leadingIcon: AppImage.chngeLanguageIcon,
                        title: AppLanguage.changelangText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChangeLanguage()),
                          );
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1.5 / 100,
                      ),
                      //-----------------------------------------------------------------------------
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Text(
                          AppLanguage.supportAbout[language],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColor.primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1.5 / 100,
                      ),
                      SettingRow(
                        leadingIcon: AppImage.termsAndConIcon,
                        title: AppLanguage.termsConditionText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TermsAndConditions()),
                          );
                        },
                      ),
                      SettingRow(
                        leadingIcon: AppImage.privacyPolicyIcon,
                        title: AppLanguage.privacyPolicyText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const PrivacyPolicy())),
                          );
                        },
                      ),
                      SettingRow(
                        leadingIcon: AppImage.aboutUsIcon,
                        title: AppLanguage.aboutUsText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AboutUs()),
                          );
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1.5 / 100,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Text(
                          AppLanguage.settingsText[language],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColor.primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1.5 / 100,
                      ),
                      SettingRow(
                        leadingIcon: AppImage.changePasswordIcon,
                        title: AppLanguage.changePasswordText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChangePassword()),
                          );
                        },
                      ),
                      SettingRow(
                        leadingIcon: AppImage.contactUsIcon,
                        title: AppLanguage.contactUsText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const ContactUs())),
                          );
                        },
                      ),
                      SettingRow(
                        leadingIcon: AppImage.editProfileIcon,
                        title: AppLanguage.editProfile[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const EditProfile())),
                          );
                        },
                      ),
                      SettingRow(
                        leadingIcon: AppImage.rateIcon,
                        title: AppLanguage.rateAppText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {},
                      ),
                      SettingRow(
                        leadingIcon: AppImage.sharetIcon,
                        title: AppLanguage.shareAppText[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {},
                      ),
                      SettingRow(
                        leadingIcon: AppImage.deleteIcon,
                        title: AppLanguage.deleteAccount[language],
                        forwardArrowIcon: AppImage.forwardArrow,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const DeleteAccount())),
                          );
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 6 / 100,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppFooter(
          selectedMenu: BottomMenus.profile, notificationCount: 0),
    );
  }

  _showAlertDialog1(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        AppLanguage.noText[language],
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text(
        AppLanguage.yesText[language],
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(AppLanguage.logoutModelText[language]),
      content: Text(AppLanguage.exitLogout[language]),
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

class SettingRow extends StatelessWidget {
  const SettingRow({
    Key? key,
    required this.title,
    required this.leadingIcon,
    required this.forwardArrowIcon,
    required this.onPress,
  }) : super(key: key);
  final String title;
  final String leadingIcon;
  final String forwardArrowIcon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (() {
          onPress();
        }),
        child: Container(
          width: MediaQuery.of(context).size.width * 88 / 100,
          height: MediaQuery.of(context).size.height * 4.4 / 100,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 4.3 / 100,
                      height: MediaQuery.of(context).size.width * 4.3 / 100,
                      child: Image.asset(leadingIcon),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 3 / 100,
                    ),
                    Text(title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: AppFont.fontFamily,
                          fontSize: 14,
                        )),
                  ],
                ),
              ),
              Container(
                child: Image.asset(
                  width: MediaQuery.of(context).size.width * 3 / 100,
                  height: MediaQuery.of(context).size.height * 5 / 100,
                  AppImage.forwardArrow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
