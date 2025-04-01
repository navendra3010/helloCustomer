import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import 'profile_setting.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsAndConditions extends StatefulWidget {
  static String routeName = './TermsAndConditions';

  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  WebViewController? _controller;
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
        title: Text(AppLanguage.termsConditionText[language],
            style: AppConstant.appBarTitleStyle),
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 100 / 100,
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Text(
                        "This Mobile Application End User Terms and conditions and Privacy Policy is a binding agreement between us.This Agreement governs your use of the APP on the MOBILE PLATFORMS and MOBILE DEVICES. The Application will be used by you. YOU ACKN- OWLEDGE THAT YOU HAVE READ AND UNDERSTAND THIS Terms and conditions and Privacy Policy; You REPRESENT THAT YOU ARE OF LEGAL AGE TO ENTER INTO A BINDING AGREEMENT AND ACCEPT THIS AGREEMENT AND AGREE THAT YOU ARE LEGALLY BOUND BY ITS TERMS AND CONDI- TIONS and PRIVACY POLICY. IF YOU DO NOT AGREE TO THESE TERMS AND CONDITION and PRIVACY POLICY, DO NOT DOWNLOAD/ INSTALL/USE THE APPLICATION AND DELETE IT FROM YOUR MOBILE DEVICE. License Grant. Subject to the terms of this Agreement, We grant you a limited,non- exclusive, and non-transferable license to download, install and use the Application for your personal, non-commercial use on a mobile device owned or otherwise controlled by you (Mobile Device) strictly in accordance with the Application's documentation access ,stream, download and use on such Mobile Device the Content and Services made available in or otherwise accessible through the Application, strictly in accordance with this Agreement and the Terms of Use applicable to such Content and Services as set forth in. License Restrictions.Licensee shall not: copy the Application, except as expressly permitted by this license; modify, translate, adapt or otherwise create derivative works or improvements, whether or not patentable, of the Application; reverse engineer disassemble, decompile, decode or otherwise attempt to derive or gain access to the source code of the Application or any part thereof; remove, delete,alter or obscure any trademarks or any copyright, trademark, patent or other intellectual property or proprietary rights notices from the Application, including any copy thereof; rent, lease, lend, sell, sublicense, assign, distribute, publish, transfer or otherwise make available the Application or any features or functionality of the appl- cation, to any third party for any reason, including by making the Application available on a network where it is capable of being accessed by more than one device at any time; remove, disable, circumvent or otherwise create or implement any workaround to any copy protection, rights management or security features in or protecting the Application; or use the Application in, or in association with, the design, construction, maintenance or operation of any hazardous environments or systems, including any power generation systems; aircraft navigation or communication systems, air traffic control systems or any other transport management systems; safety-critical applications, including medical or life-support systems, vehicle operation applications or any police, fire or other safety response systems; and military or aerospace applications, weapons systems or environments. Reservation of Rights. You acknowledge and agree that the Application is provided under license, and will be used by you. You do not acquire any ownership interest in the Application under this Agreement, or any other rights thereto",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: AppFont.fontFamily),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
