import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_image.dart';
import 'login_screen.dart';

class Splash extends StatefulWidget {
  Splash({super.key});
  static String routeName = './Splash';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor:
          AppColor.secondryColor, // Change this to your desired color
    ));

    return Scaffold(
      backgroundColor: AppColor.secondryColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Container(
            color: AppColor.secondryColor,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 100 / 100,
                child: Image.asset(
                  AppImage.splashscreenImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
