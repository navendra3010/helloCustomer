import 'package:flutter/material.dart';

import '../../utilities/app_constant.dart';
import '../../utilities/app_footer.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class Notifications extends StatefulWidget {
  static String routeName = './Notifications';
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<dynamic> notifications = <dynamic>[
    {"name": "Amani Ahmad", "status": false},
    {"name": "Amani Ahmad", "status": false},
    {"name": "Liam Snith", "status": false},
    {"name": "Liam Snith", "status": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
         automaticallyImplyLeading: false, 
        elevation: 1,
        backgroundColor: Colors.white,
        systemOverlayStyle: AppConstant.systemUiOverlayStyle,
        title: Text(AppLanguage.notificationText[language],
            style: AppConstant.appBarTitleStyle),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8),
            alignment: Alignment.center,
            child: Text(
              AppLanguage.clearText[language],
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 100 / 100,
            // height: MediaQuery.of(context).size.height * 100 / 100,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 2 / 100),
                Container(
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: notifications.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      15 /
                                      100,
                                  height: MediaQuery.of(context).size.width *
                                      15 /
                                      100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(
                                        100), //<-- SEE HERE

                                    image: const DecorationImage(
                                      image: AssetImage(AppImage.userImage),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      1.5 /
                                      100,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          68 /
                                          100,
                                      alignment: Alignment.centerLeft,
                                      child: Text(notifications[index]['name'],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              1 /
                                              100,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          68 /
                                          100,
                                      child: const Text(
                                          "Lorem Ipsum makes no warranty that the functionality of the app will be uninterrupted or error free,",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      6 /
                                      100,
                                  height: MediaQuery.of(context).size.width *
                                      6 /
                                      100,
                                  child: Image.asset(AppImage.crossIcon),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: const Text("15 min ago",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 12 / 100),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: const AppFooter(
      //     selectedMenu: BottomMenus.notification, notificationCount: 1),
    );
  }
}
