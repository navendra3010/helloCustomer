import 'package:flutter/material.dart';
import 'package:hellocustomer/utilities/app_color.dart';
import 'package:hellocustomer/utilities/app_constant.dart';
import 'package:hellocustomer/utilities/app_font.dart';
import 'package:hellocustomer/utilities/app_footer.dart';
import 'package:hellocustomer/utilities/app_image.dart';
import 'package:hellocustomer/utilities/app_language.dart';

class Booking extends StatefulWidget {
  static String routeName = './Booking';
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  bool isClick = false;
  int status = 1;
  List<dynamic> bookingListOng = <dynamic>[
    {
      "image": "./assets/icons/user4_image.jpg",
      "name": "Allay Abraham",
      "service": "Cleaning",
      "date": "Apr 12,2024",
      "price": "\$ 1,200",
      "status": "Ongoing",
    },
    {
      "image": "./assets/icons/user2_image.jpg",
      "name": "Emmi Jackson",
      "service": "Deep Cleaning",
      "date": "May 15,2024",
      "price": "\$ 1,380",
      "status": "Ongoing",
    },
  ];
  List<dynamic> bookingListCom = <dynamic>[
    {
      "image": "./assets/icons/user3_image.jpg",
      "name": "Andrew Jonas",
      "service": "Spring",
      "date": "Jun 12,2024",
      "price": "\$ 1,500",
      "status": "Completed",
    },
    {
      "image": "./assets/icons/user2_image.jpg",
      "name": "Bella Andrew",
      "service": "Laundry",
      "date": "Apr 12,2024",
      "price": "\$ 1,200",
      "status": "Completed",
    },
  ];
  List<dynamic> bookingListPending = <dynamic>[
    {
      "image": "./assets/icons/user3_image.jpg",
      "name": "Andrew Jonas",
      "service": "Deep Cleaning",
      "date": "Apr 12,2024",
      "price": "\$ 1,280",
      "status": "Pending",
    },
    {
      "image": "./assets/icons/user_image.jpg",
      "name": "John Mark",
      "service": "Cleaning",
      "date": "Jun 28,2024",
      "price": "\$ 1,355",
      "status": "Pending",
    },
  ];
  List<dynamic> orderListShipped = <dynamic>[
    {
      "image": "./assets/icons/product2_image.png",
      "customerName": "Allay Johnson",
      "productName": "Tap Stainless Steel Surface Tap...",
      "quantity": "+3 more",
      "deliveryDate": "Expected delivery by Mar 18,2024",
      "status": "Your order has been shipped",
    },
    {
      "image": "./assets/icons/product_image.png",
      "customerName": "Nick Jackson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "quantity": "+2 more",
      "deliveryDate": "Expected delivery by Mar 28,2024",
      "status": "Your order has been shipped",
    },
  ];
  List<dynamic> ordertListDelivered = <dynamic>[
    {
      "image": "./assets/icons/product_image.png",
      "customerName": "Andrew Jonas",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "quantity": "+5 more",
      "deliveryDate": "Expected delivery by May 18,2024",
      "status": "Your order has been delivered",
    },
    {
      "image": "./assets/icons/product2_image.png",
      "customerName": "John Cena",
      "productName": "Tap Stainless Steel Surface Tap...",
      "quantity": "+2 more",
      "deliveryDate": "Expected delivery by Mar 25,2024",
      "status": "Your order has been delivered",
    },
  ];
  List<dynamic> orderListPlaced = <dynamic>[
    {
      "image": "./assets/icons/product_image.png",
      "customerName": "Carl Thomson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "quantity": "+5 more",
      "deliveryDate": "Expected delivery by Mar 18,2024",
      "status": "Your order has been placed",
    },
    {
      "image": "./assets/icons/product2_image.png",
      "customerName": "Allay Johnson",
      "productName": "Tap Stainless Steel Surface Tap...",
      "quantity": "+3 more",
      "deliveryDate": "Expected delivery by Jun 18,2024",
      "status": "Your order has been placed",
    },
  ];
  List<dynamic> orderList = <dynamic>[
    {
      "image": "./assets/icons/product_image.png",
      "customerName": "Andrew Jonas",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "quantity": "+2 more",
      "deliveryDate": "Expected delivery by Apr 18,2024",
      "status": "Your order has been placed",
      "color": Color(0xffFFA058).withOpacity(0.1),
      "color2": Color(0xffFFA058),
    },
    {
      "image": "./assets/icons/product2_image.png",
      "customerName": "Becky Lynch",
      "productName": "Tap Stainless Steel Surface Tap...",
      "quantity": "+3 more",
      "deliveryDate": "Expected delivery by Mar 15,2024",
      "status": "Your order has been delivered",
      "color": Color(0xff309D27).withOpacity(0.1),
      "color2": Color(0xff309D27),
    },
    {
      "image": "./assets/icons/product_image.png",
      "customerName": "Allay Johnson",
      "productName": "Vim Domex Cif Cleaning Esse...",
      "quantity": "+3 more",
      "deliveryDate": "Expected delivery by Mar 20,2024",
      "status": "Your order has been shipped",
      "color": Color(0xff6B95FF).withOpacity(0.1),
      "color2": Color(0xff6B95FF)
    },
  ];

  List<dynamic> bookingList = <dynamic>[
    {
      "image": "./assets/icons/user4_image.jpg",
      "name": "Allay Abraham",
      "service": "Cleaning",
      "date": "Dec 12,2024",
      "price": "\$ 1,200",
      "status": "Pending",
      "color": Color(0xffF1BC01),
    },
    {
      "image": "./assets/icons/user2_image.jpg",
      "name": "Karl Nilo",
      "service": "Deep Cleaning",
      "date": "Apr 15,2024",
      "price": "\$ 1,500",
      "status": "Pending",
      "color": Color(0xffF1BC01),
    },
    {
      "image": "./assets/icons/user3_image.jpg",
      "name": "Andrew Jonas",
      "service": "Cleaning",
      "date": "Apr 12,2024",
      "price": "\$ 1,200",
      "status": "Completed",
      "color": Color(0xff309D27),
    },
    {
      "image": "./assets/icons/user4_image.jpg",
      "name": "Emmi Jackson",
      "service": "Laundry",
      "date": "May 12,2024",
      "price": "\$ 1,360",
      "status": "Ongoing",
      "color": Color(0xff0161F1),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              height: MediaQuery.of(context).size.height * 6 / 100,
              alignment: Alignment.bottomLeft,
              child: Text(AppLanguage.bookingOrderText[language],
                  style: AppConstant.appBarTitleStyle),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 6 / 100,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 8 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 40 / 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isClick = false;
                            });
                          },
                          child: Container(
                            child: Text(
                              AppLanguage.bookingText[language],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.bold,
                                  color: isClick
                                      ? Color(0xff616161)
                                      : AppColor.themeColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 35 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.4 / 100,
                          color: isClick ? Colors.white : AppColor.themeColor,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 6.5 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 40 / 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isClick = true;
                            });
                          },
                          child: Container(
                            child: Text(
                              AppLanguage.orderText[language],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppFont.fontFamily,
                                  color: isClick
                                      ? AppColor.themeColor
                                      : Color(0xff616161)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 35 / 100,
                          height:
                              MediaQuery.of(context).size.height * 0.4 / 100,
                          color: isClick ? AppColor.themeColor : Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 4 / 100,
            ),
            isClick
                ? Container(
                    width: MediaQuery.of(context).size.width * 95 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              status = 1;
                            });
                          },
                          child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 13 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100,
                              decoration: BoxDecoration(
                                color: (status == 1)
                                    ? AppColor.themeColor
                                    : AppColor.lightorange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                AppLanguage.alltext[language],
                                style: TextStyle(
                                    color: (status == 1)
                                        ? Colors.white
                                        : AppColor.themeColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 14),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              status = 2;
                            });
                          },
                          child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 27 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100,
                              decoration: BoxDecoration(
                                color: (status == 2)
                                    ? AppColor.themeColor
                                    : AppColor.lightorange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                AppLanguage.orderPlacedText[language],
                                style: TextStyle(
                                    color: (status == 2)
                                        ? Colors.white
                                        : AppColor.themeColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 14),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              status = 3;
                            });
                          },
                          child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 20 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100,
                              decoration: BoxDecoration(
                                color: (status == 3)
                                    ? AppColor.themeColor
                                    : AppColor.lightorange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                AppLanguage.shippedText[language],
                                style: TextStyle(
                                    color: (status == 3)
                                        ? Colors.white
                                        : AppColor.themeColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 14),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              status = 4;
                            });
                          },
                          child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 22 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100,
                              decoration: BoxDecoration(
                                color: (status == 4)
                                    ? AppColor.themeColor
                                    : AppColor.lightorange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                AppLanguage.deliveredtext[language],
                                style: TextStyle(
                                    color: (status == 4)
                                        ? Colors.white
                                        : AppColor.themeColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 14),
                              )),
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: MediaQuery.of(context).size.width * 95 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              status = 1;
                            });
                          },
                          child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 13 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100,
                              decoration: BoxDecoration(
                                color: (status == 1)
                                    ? AppColor.themeColor
                                    : AppColor.lightorange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                AppLanguage.alltext[language],
                                style: TextStyle(
                                    color: (status == 1)
                                        ? Colors.white
                                        : AppColor.themeColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 14),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              status = 2;
                            });
                          },
                          child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 22 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100,
                              decoration: BoxDecoration(
                                color: (status == 2)
                                    ? AppColor.themeColor
                                    : AppColor.lightorange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                AppLanguage.pendingText[language],
                                style: TextStyle(
                                    color: (status == 2)
                                        ? Colors.white
                                        : AppColor.themeColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 14),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              status = 3;
                            });
                          },
                          child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 22 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100,
                              decoration: BoxDecoration(
                                color: (status == 3)
                                    ? AppColor.themeColor
                                    : AppColor.lightorange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                AppLanguage.ongoingText[language],
                                style: TextStyle(
                                    color: (status == 3)
                                        ? Colors.white
                                        : AppColor.themeColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 14),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              status = 4;
                            });
                          },
                          child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 25 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100,
                              decoration: BoxDecoration(
                                color: (status == 4)
                                    ? AppColor.themeColor
                                    : AppColor.lightorange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                AppLanguage.completed[language],
                                style: TextStyle(
                                    color: (status == 4)
                                        ? Colors.white
                                        : AppColor.themeColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 14),
                              )),
                        ),
                      ],
                    ),
                  ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 3 / 100,
            ),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (status == 1)
                        Column(
                          children: [
                            if (isClick == false)
                              Column(
                                //cross
                                children: [
                                  Wrap(
                                    direction: Axis.vertical,
                                    children: [
                                      ...List.generate(
                                          bookingList.length,
                                          (index) => Column(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5),
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 6),
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  90 /
                                                                  100,
                                                              child: Row(
                                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        28 /
                                                                        100,
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        9 /
                                                                        100,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                10)),
                                                                        image: DecorationImage(
                                                                            image:
                                                                                AssetImage(bookingList[index]["image"]),
                                                                            fit: BoxFit.cover)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        2.5 /
                                                                        100,
                                                                  ),
                                                                  Container(
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              40 /
                                                                              100,
                                                                          child:
                                                                              Text(
                                                                            bookingList[index]["name"],
                                                                            maxLines:
                                                                                1,
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 14,
                                                                                fontFamily: AppFont.fontFamily,
                                                                                color: AppColor.primaryColor),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context).size.height *
                                                                              0.4 /
                                                                              100,
                                                                        ),
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              40 /
                                                                              100,
                                                                          child:
                                                                              Text(
                                                                            bookingList[index]["service"],
                                                                            maxLines:
                                                                                1,
                                                                            style: TextStyle(
                                                                                fontSize: 11,
                                                                                color: AppColor.themeColor,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontFamily: AppFont.fontFamily),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context).size.height *
                                                                              0.8 /
                                                                              100,
                                                                        ),
                                                                        Container(
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Date",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingList[index]["date"],
                                                                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, fontFamily: AppFont.fontFamily, color: AppColor.primaryColor),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: MediaQuery.of(context).size.width * 5.7 / 100,
                                                                              ),
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Price",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingList[index]["price"],
                                                                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, fontFamily: AppFont.fontFamily, color: AppColor.primaryColor),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: MediaQuery.of(context).size.width * 5.7 / 100,
                                                                              ),
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Status",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingList[index]["status"],
                                                                                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10, color: bookingList[index]["color"], fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                  ),
                                ],
                              ),
                            //-------------------------order list------------------------------------------------------------
                            if (isClick == true)
                              Column(
                                children: [
                                  Wrap(
                                    direction: Axis.vertical,
                                    children: [
                                      ...List.generate(
                                          orderList.length,
                                          (index) => Column(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7),
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  AppLanguage
                                                                          .customerText[
                                                                      language],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontFamily:
                                                                          AppFont
                                                                              .fontFamily,
                                                                      color: AppColor
                                                                          .greyDarkColor),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    30 /
                                                                    100,
                                                                child: Text(
                                                                  orderList[
                                                                          index]
                                                                      [
                                                                      "customerName"],
                                                                  maxLines: 2,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: AppColor
                                                                          .primaryColor,
                                                                      fontFamily:
                                                                          AppFont
                                                                              .fontFamily),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.5 /
                                                              100,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              90 /
                                                              100,
                                                          child: Row(
                                                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    29 /
                                                                    100,
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    9 /
                                                                    100,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                10)),
                                                                        image:
                                                                            DecorationImage(
                                                                          image:
                                                                              AssetImage(orderList[index]["image"]),
                                                                          //fit: BoxFit
                                                                          //.cover
                                                                        )),
                                                              ),
                                                              SizedBox(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    2.5 /
                                                                    100,
                                                              ),
                                                              Container(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              35 /
                                                                              100,
                                                                          //color: Colors.amber,
                                                                          child:
                                                                              Text(
                                                                            orderList[index]["productName"],
                                                                            maxLines:
                                                                                2,
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w600,
                                                                                color: AppColor.primaryColor,
                                                                                fontFamily: AppFont.fontFamily,
                                                                                fontSize: 13),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              18 /
                                                                              100,
                                                                        ),
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {},
                                                                          child:
                                                                              Container(
                                                                            width: MediaQuery.of(context).size.width *
                                                                                5.2 /
                                                                                100,
                                                                            height: MediaQuery.of(context).size.width *
                                                                                5.2 /
                                                                                100,
                                                                            child:
                                                                                Image.asset(AppImage.forwardArrowblackIcon),
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.4 /
                                                                          100,
                                                                    ),
                                                                    Container(
                                                                      child:
                                                                          Text(
                                                                        orderList[index]
                                                                            [
                                                                            "quantity"],
                                                                        maxLines:
                                                                            1,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                11,
                                                                            color:
                                                                                AppColor.themeColor,
                                                                            fontWeight: FontWeight.w600,
                                                                            fontFamily: AppFont.fontFamily,
                                                                            decoration: TextDecoration.underline),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.6 /
                                                                          100,
                                                                    ),
                                                                    Container(
                                                                      child:
                                                                          Text(
                                                                        orderList[index]
                                                                            [
                                                                            "deliveryDate"],
                                                                        maxLines:
                                                                            1,
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontFamily: AppFont.fontFamily,
                                                                            color: AppColor.primaryColor,
                                                                            fontSize: 12),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              2 /
                                                              100,
                                                        ),
                                                        Container(
                                                            width:
                                                                MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    90 /
                                                                    100,
                                                            height: MediaQuery
                                                                        .of(
                                                                            context)
                                                                    .size
                                                                    .height *
                                                                4.5 /
                                                                100,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: orderList[
                                                                      index]
                                                                  ["color"],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              orderList[index]
                                                                  ["status"],
                                                              style: TextStyle(
                                                                  color: orderList[
                                                                          index]
                                                                      [
                                                                      "color2"],
                                                                  fontSize: 10,
                                                                  fontFamily:
                                                                      AppFont
                                                                          .fontFamily),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                  ),
                                ],
                              )
                          ],
                        ),
//---------------------------------------------------------------------------------------------------------------------------
                      if (status == 2)
                        Column(
                          children: [
                            if (isClick == false)
                              Column(
                                //cross
                                children: [
                                  Wrap(
                                    direction: Axis.vertical,
                                    children: [
                                      ...List.generate(
                                          bookingListPending.length,
                                          (index) => Column(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5),
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 6),
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  90 /
                                                                  100,
                                                              child: Row(
                                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        28 /
                                                                        100,
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        9 /
                                                                        100,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                10)),
                                                                        image: DecorationImage(
                                                                            image:
                                                                                AssetImage(bookingListPending[index]["image"]),
                                                                            fit: BoxFit.cover)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        2.5 /
                                                                        100,
                                                                  ),
                                                                  Container(
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              59 /
                                                                              100,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Container(
                                                                                width: MediaQuery.of(context).size.width * 30 / 100,
                                                                                child: Text(
                                                                                  bookingListPending[index]["name"],
                                                                                  maxLines: 1,
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontFamily: AppFont.fontFamily, color: AppColor.primaryColor),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                "Quotation Viewed by Vendor",
                                                                                style: TextStyle(fontSize: 8, color: AppColor.themeColor, fontWeight: FontWeight.w500, fontFamily: AppFont.fontFamily),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context).size.height *
                                                                              0.4 /
                                                                              100,
                                                                        ),
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              40 /
                                                                              100,
                                                                          child:
                                                                              Text(
                                                                            bookingListPending[index]["service"],
                                                                            maxLines:
                                                                                1,
                                                                            style: TextStyle(
                                                                                fontSize: 11,
                                                                                color: AppColor.themeColor,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontFamily: AppFont.fontFamily),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context).size.height *
                                                                              0.8 /
                                                                              100,
                                                                        ),
                                                                        Container(
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Date",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingListPending[index]["date"],
                                                                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, fontFamily: AppFont.fontFamily, color: AppColor.primaryColor),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: MediaQuery.of(context).size.width * 5.7 / 100,
                                                                              ),
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Price",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingListPending[index]["price"],
                                                                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, fontFamily: AppFont.fontFamily, color: AppColor.primaryColor),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: MediaQuery.of(context).size.width * 5.7 / 100,
                                                                              ),
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Status",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingListPending[index]["status"],
                                                                                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10, color: Color(0xffF1BC01), fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                  ),
                                ],
                              ),
                            //-------------------------order list------------------------------------------------------------
                            if (isClick == true)
                              Column(
                                children: [
                                  Wrap(
                                    direction: Axis.vertical,
                                    children: [
                                      ...List.generate(
                                          orderListPlaced.length,
                                          (index) => Column(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7),
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  AppLanguage
                                                                          .customerText[
                                                                      language],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontFamily:
                                                                          AppFont
                                                                              .fontFamily,
                                                                      color: AppColor
                                                                          .greyDarkColor),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    30 /
                                                                    100,
                                                                child: Text(
                                                                  orderListPlaced[
                                                                          index]
                                                                      [
                                                                      "customerName"],
                                                                  maxLines: 2,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: AppColor
                                                                          .primaryColor,
                                                                      fontFamily:
                                                                          AppFont
                                                                              .fontFamily),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.5 /
                                                              100,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              90 /
                                                              100,
                                                          child: Row(
                                                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    29 /
                                                                    100,
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    9 /
                                                                    100,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                10)),
                                                                        image:
                                                                            DecorationImage(
                                                                          image:
                                                                              AssetImage(orderListPlaced[index]["image"]),
                                                                          //fit: BoxFit
                                                                          //.cover
                                                                        )),
                                                              ),
                                                              SizedBox(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    2.5 /
                                                                    100,
                                                              ),
                                                              Container(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              35 /
                                                                              100,
                                                                          //color: Colors.amber,
                                                                          child:
                                                                              Text(
                                                                            orderListPlaced[index]["productName"],
                                                                            maxLines:
                                                                                2,
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w600,
                                                                                color: AppColor.primaryColor,
                                                                                fontFamily: AppFont.fontFamily,
                                                                                fontSize: 13),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              18 /
                                                                              100,
                                                                        ),
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {},
                                                                          child:
                                                                              Container(
                                                                            width: MediaQuery.of(context).size.width *
                                                                                5.2 /
                                                                                100,
                                                                            height: MediaQuery.of(context).size.width *
                                                                                5.2 /
                                                                                100,
                                                                            child:
                                                                                Image.asset(AppImage.forwardArrowblackIcon),
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.4 /
                                                                          100,
                                                                    ),
                                                                    Container(
                                                                      child:
                                                                          Text(
                                                                        orderListPlaced[index]
                                                                            [
                                                                            "quantity"],
                                                                        maxLines:
                                                                            1,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                AppColor.themeColor,
                                                                            fontWeight: FontWeight.w600,
                                                                            fontFamily: AppFont.fontFamily,
                                                                            decoration: TextDecoration.underline),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.7 /
                                                                          100,
                                                                    ),
                                                                    Container(
                                                                      child:
                                                                          Text(
                                                                        orderListPlaced[index]
                                                                            [
                                                                            "deliveryDate"],
                                                                        maxLines:
                                                                            1,
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontFamily: AppFont.fontFamily,
                                                                            color: AppColor.primaryColor,
                                                                            fontSize: 11),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              2 /
                                                              100,
                                                        ),
                                                        Container(
                                                            width:
                                                                MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    90 /
                                                                    100,
                                                            height: MediaQuery
                                                                        .of(
                                                                            context)
                                                                    .size
                                                                    .height *
                                                                4.5 /
                                                                100,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                      0xffFFA058)
                                                                  .withOpacity(
                                                                      0.1),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              orderListPlaced[
                                                                      index]
                                                                  ["status"],
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xffFFA058),
                                                                  fontSize: 10,
                                                                  fontFamily:
                                                                      AppFont
                                                                          .fontFamily),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                  ),
                                ],
                              )
                          ],
                        ),
//------------------------------------------------------------------------------------------------------------------------------
                      if (status == 3)
                        Column(
                          children: [
                            if (isClick == false)
                              Column(
                                //cross
                                children: [
                                  Wrap(
                                    direction: Axis.vertical,
                                    children: [
                                      ...List.generate(
                                          bookingListOng.length,
                                          (index) => Column(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5),
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 6),
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  90 /
                                                                  100,
                                                              child: Row(
                                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        28 /
                                                                        100,
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        9 /
                                                                        100,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                10)),
                                                                        image: DecorationImage(
                                                                            image:
                                                                                AssetImage(bookingListOng[index]["image"]),
                                                                            fit: BoxFit.cover)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        2.5 /
                                                                        100,
                                                                  ),
                                                                  Container(
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              40 /
                                                                              100,
                                                                          child:
                                                                              Text(
                                                                            bookingListOng[index]["name"],
                                                                            maxLines:
                                                                                1,
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 14,
                                                                                fontFamily: AppFont.fontFamily,
                                                                                color: AppColor.primaryColor),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context).size.height *
                                                                              0.4 /
                                                                              100,
                                                                        ),
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              40 /
                                                                              100,
                                                                          child:
                                                                              Text(
                                                                            bookingListOng[index]["service"],
                                                                            maxLines:
                                                                                1,
                                                                            style: TextStyle(
                                                                                fontSize: 11,
                                                                                color: AppColor.themeColor,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontFamily: AppFont.fontFamily),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context).size.height *
                                                                              0.8 /
                                                                              100,
                                                                        ),
                                                                        Container(
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Date",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingListOng[index]["date"],
                                                                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, fontFamily: AppFont.fontFamily, color: AppColor.primaryColor),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: MediaQuery.of(context).size.width * 5.7 / 100,
                                                                              ),
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Price",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingListOng[index]["price"],
                                                                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, fontFamily: AppFont.fontFamily, color: AppColor.primaryColor),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: MediaQuery.of(context).size.width * 5.7 / 100,
                                                                              ),
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Status",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingListOng[index]["status"],
                                                                                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10, color: Color(0xff6B95FF), fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                  ),
                                ],
                              ),
                            //-------------------------order list------------------------------------------------------------
                            if (isClick == true)
                              Column(
                                children: [
                                  Wrap(
                                    direction: Axis.vertical,
                                    children: [
                                      ...List.generate(
                                          orderListShipped.length,
                                          (index) => Column(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7),
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  AppLanguage
                                                                          .customerText[
                                                                      language],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontFamily:
                                                                          AppFont
                                                                              .fontFamily,
                                                                      color: AppColor
                                                                          .greyDarkColor),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    30 /
                                                                    100,
                                                                child: Text(
                                                                  orderListShipped[
                                                                          index]
                                                                      [
                                                                      "customerName"],
                                                                  maxLines: 2,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: AppColor
                                                                          .primaryColor,
                                                                      fontFamily:
                                                                          AppFont
                                                                              .fontFamily),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.5 /
                                                              100,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              90 /
                                                              100,
                                                          child: Row(
                                                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    29 /
                                                                    100,
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    9 /
                                                                    100,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                10)),
                                                                        image:
                                                                            DecorationImage(
                                                                          image:
                                                                              AssetImage(orderListShipped[index]["image"]),
                                                                          //fit: BoxFit
                                                                          //.cover
                                                                        )),
                                                              ),
                                                              SizedBox(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    2.5 /
                                                                    100,
                                                              ),
                                                              Container(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              35 /
                                                                              100,
                                                                          //color: Colors.amber,
                                                                          child:
                                                                              Text(
                                                                            orderListShipped[index]["productName"],
                                                                            maxLines:
                                                                                2,
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w600,
                                                                                color: AppColor.primaryColor,
                                                                                fontFamily: AppFont.fontFamily,
                                                                                fontSize: 13),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              18 /
                                                                              100,
                                                                        ),
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {},
                                                                          child:
                                                                              Container(
                                                                            width: MediaQuery.of(context).size.width *
                                                                                5.2 /
                                                                                100,
                                                                            height: MediaQuery.of(context).size.width *
                                                                                5.2 /
                                                                                100,
                                                                            child:
                                                                                Image.asset(AppImage.forwardArrowblackIcon),
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.4 /
                                                                          100,
                                                                    ),
                                                                    Container(
                                                                      child:
                                                                          Text(
                                                                        orderListShipped[index]
                                                                            [
                                                                            "quantity"],
                                                                        maxLines:
                                                                            1,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                11,
                                                                            color:
                                                                                AppColor.themeColor,
                                                                            fontWeight: FontWeight.w600,
                                                                            fontFamily: AppFont.fontFamily,
                                                                            decoration: TextDecoration.underline),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.7 /
                                                                          100,
                                                                    ),
                                                                    Container(
                                                                      child:
                                                                          Text(
                                                                        orderListShipped[index]
                                                                            [
                                                                            "deliveryDate"],
                                                                        maxLines:
                                                                            1,
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontFamily: AppFont.fontFamily,
                                                                            color: AppColor.primaryColor,
                                                                            fontSize: 11),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1 /
                                                              100,
                                                        ),
                                                        Container(
                                                            width:
                                                                MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    90 /
                                                                    100,
                                                            height: MediaQuery
                                                                        .of(
                                                                            context)
                                                                    .size
                                                                    .height *
                                                                4.5 /
                                                                100,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                      0xff6B95FF)
                                                                  .withOpacity(
                                                                      0.1),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              orderListShipped[
                                                                      index]
                                                                  ["status"],
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff6B95FF),
                                                                  fontSize: 10,
                                                                  fontFamily:
                                                                      AppFont
                                                                          .fontFamily),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                  ),
                                ],
                              )
                          ],
                        ),
//-----------------------------------------------------------------------------------------------------------------------------
                      if (status == 4)
                        Column(
                          children: [
                            if (isClick == false)
                              Column(
                                //cross
                                children: [
                                  Wrap(
                                    direction: Axis.vertical,
                                    children: [
                                      ...List.generate(
                                          bookingListCom.length,
                                          (index) => Column(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5),
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 6),
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  90 /
                                                                  100,
                                                              child: Row(
                                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        28 /
                                                                        100,
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        9 /
                                                                        100,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                10)),
                                                                        image: DecorationImage(
                                                                            image:
                                                                                AssetImage(bookingListCom[index]["image"]),
                                                                            fit: BoxFit.cover)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        2.5 /
                                                                        100,
                                                                  ),
                                                                  Container(
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              40 /
                                                                              100,
                                                                          child:
                                                                              Text(
                                                                            bookingListCom[index]["name"],
                                                                            maxLines:
                                                                                1,
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 14,
                                                                                fontFamily: AppFont.fontFamily,
                                                                                color: AppColor.primaryColor),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context).size.height *
                                                                              0.4 /
                                                                              100,
                                                                        ),
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              40 /
                                                                              100,
                                                                          child:
                                                                              Text(
                                                                            bookingListCom[index]["service"],
                                                                            maxLines:
                                                                                1,
                                                                            style: TextStyle(
                                                                                fontSize: 11,
                                                                                color: AppColor.themeColor,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontFamily: AppFont.fontFamily),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context).size.height *
                                                                              0.8 /
                                                                              100,
                                                                        ),
                                                                        Container(
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Date",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingListCom[index]["date"],
                                                                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, fontFamily: AppFont.fontFamily, color: AppColor.primaryColor),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: MediaQuery.of(context).size.width * 5.7 / 100,
                                                                              ),
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Price",
                                                                                        style: TextStyle(fontSize: 9, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingListCom[index]["price"],
                                                                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, fontFamily: AppFont.fontFamily, color: AppColor.primaryColor),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: MediaQuery.of(context).size.width * 5.7 / 100,
                                                                              ),
                                                                              Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      child: Text(
                                                                                        "Booking Status",
                                                                                        style: TextStyle(fontSize: 8, color: AppColor.greyDarkColor, fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: MediaQuery.of(context).size.height * 0.3 / 100,
                                                                                    ),
                                                                                    Container(
                                                                                      child: Text(
                                                                                        bookingListCom[index]["status"],
                                                                                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10, color: Color(0xff309D27), fontFamily: AppFont.fontFamily),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                  ),
                                ],
                              ),
                            //-------------------------order list------------------------------------------------------------
                            if (isClick == true)
                              Column(
                                children: [
                                  Wrap(
                                    direction: Axis.vertical,
                                    children: [
                                      ...List.generate(
                                          ordertListDelivered.length,
                                          (index) => Column(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7),
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  AppLanguage
                                                                          .customerText[
                                                                      language],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontFamily:
                                                                          AppFont
                                                                              .fontFamily,
                                                                      color: AppColor
                                                                          .greyDarkColor),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    30 /
                                                                    100,
                                                                child: Text(
                                                                  ordertListDelivered[
                                                                          index]
                                                                      [
                                                                      "customerName"],
                                                                  maxLines: 2,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: AppColor
                                                                          .primaryColor,
                                                                      fontFamily:
                                                                          AppFont
                                                                              .fontFamily),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.5 /
                                                              100,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              90 /
                                                              100,
                                                          child: Row(
                                                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    29 /
                                                                    100,
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    9 /
                                                                    100,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                10)),
                                                                        image:
                                                                            DecorationImage(
                                                                          image:
                                                                              AssetImage(ordertListDelivered[index]["image"]),
                                                                          //fit: BoxFit
                                                                          //.cover
                                                                        )),
                                                              ),
                                                              SizedBox(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    2.5 /
                                                                    100,
                                                              ),
                                                              Container(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              35 /
                                                                              100,
                                                                          //color: Colors.amber,
                                                                          child:
                                                                              Text(
                                                                            ordertListDelivered[index]["productName"],
                                                                            maxLines:
                                                                                2,
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w600,
                                                                                color: AppColor.primaryColor,
                                                                                fontFamily: AppFont.fontFamily,
                                                                                fontSize: 13),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width: MediaQuery.of(context).size.width *
                                                                              12 /
                                                                              100,
                                                                        ),
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {},
                                                                          child:
                                                                              Container(
                                                                            width: MediaQuery.of(context).size.width *
                                                                                5.2 /
                                                                                100,
                                                                            height: MediaQuery.of(context).size.width *
                                                                                5.2 /
                                                                                100,
                                                                            child:
                                                                                Image.asset(AppImage.forwardArrowblackIcon),
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.4 /
                                                                          100,
                                                                    ),
                                                                    Container(
                                                                      child:
                                                                          Text(
                                                                        ordertListDelivered[index]
                                                                            [
                                                                            "quantity"],
                                                                        maxLines:
                                                                            1,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                11,
                                                                            color:
                                                                                AppColor.themeColor,
                                                                            fontWeight: FontWeight.w600,
                                                                            fontFamily: AppFont.fontFamily,
                                                                            decoration: TextDecoration.underline),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.7 /
                                                                          100,
                                                                    ),
                                                                    Container(
                                                                      child:
                                                                          Text(
                                                                        ordertListDelivered[index]
                                                                            [
                                                                            "deliveryDate"],
                                                                        maxLines:
                                                                            1,
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontFamily: AppFont.fontFamily,
                                                                            color: AppColor.primaryColor,
                                                                            fontSize: 11),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1 /
                                                              100,
                                                        ),
                                                        Container(
                                                            width:
                                                                MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    90 /
                                                                    100,
                                                            height: MediaQuery
                                                                        .of(
                                                                            context)
                                                                    .size
                                                                    .height *
                                                                4.5 /
                                                                100,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                      0xff309D27)
                                                                  .withOpacity(
                                                                      0.1),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              ordertListDelivered[
                                                                      index]
                                                                  ["status"],
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff309D27),
                                                                  fontSize: 10,
                                                                  fontFamily:
                                                                      AppFont
                                                                          .fontFamily),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        5 /
                                        100,
                                  ),
                                ],
                              )
                          ],
                        ),
                    ],
                  ),
                ))
          ],
        ),
      )),
      bottomNavigationBar: const AppFooter(
          selectedMenu: BottomMenus.booking, notificationCount: 0),
    );
  }
}
