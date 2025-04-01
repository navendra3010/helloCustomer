import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_footer.dart';

class Services extends StatefulWidget {
  static String routeName = './Services';
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
      )),
      // bottomNavigationBar: const AppFooter(
      //     selectedMenu: BottomMenus.services, notificationCount: 0),
    );
  }
}
