import 'package:flutter/material.dart';
import '../otherpage/add_address1.dart';
import '../otherpage/add_address2.dart';
import '../otherpage/add_address3.dart';
import '../otherpage/bookings.dart';
import '../otherpage/change_language.dart';
import '../otherpage/manage_address.dart';
import '../otherpage/mostPopularVendors.dart';
import '../otherpage/mostpopularProduct.dart';
import '../otherpage/mostpopularService.dart';
import '../otherpage/pending_quotation_details.dart';
import '../otherpage/productCategorie.dart';
import '../otherpage/products.dart';
import '../otherpage/productsScreen.dart';
import '../otherpage/quotation_details.dart';
import '../otherpage/received_pending_quotation.dart';
import '../otherpage/send_request.dart';
import '../otherpage/serviceEmploye.dart';
import '../otherpage/serviceFooterscreen.dart';
import '../otherpage/serviceSubcategoryScreen.dart';
import '../otherpage/services.dart';
import '../otherpage/vendor_info.dart';
import '../otherpage/vendor_reviews.dart';
import '../otherpage/vendor_services.dart';
import '../otherpage/wallet.dart';
import '../view/authentication/aboutUs_screen.dart';
import '../view/authentication/change_password.dart';
import '../view/authentication/contactus_screen.dart';
import '../view/authentication/delete_account.dart';
import '../view/authentication/edit_profile_screen.dart';
import '../view/authentication/forgot_otp_verify_screen.dart';
import '../view/authentication/forgot_password_screen.dart';
import '../view/authentication/home_screen.dart';
import '../view/authentication/login_screen.dart';
import '../view/authentication/notifiction_screen.dart';
import '../view/authentication/otp_verify_screen.dart';
import '../view/authentication/privacy_policy_screen.dart';
import '../view/authentication/profile.dart';
import '../view/authentication/profile_setting.dart';
import '../view/authentication/reset_password.dart';

import '../view/authentication/signup_screen.dart';
import '../view/authentication/splash_screen.dart';
import '../view/authentication/terms_conditions_screen.dart';
import '../view/googlemap/location.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => Splash(),
  //1.1 authentication route
  Login.routeName: (context) => const Login(),
  Setting.routeName: (context) => const Setting(),
  AboutUs.routeName: (context) => const AboutUs(),
  TermsAndConditions.routeName: (context) => const TermsAndConditions(),
  PrivacyPolicy.routeName: (context) => const PrivacyPolicy(),
  ContactUs.routeName: (context) => const ContactUs(),
  DeleteAccount.routeName: (context) => const DeleteAccount(),
  EditProfile.routeName: (context) => const EditProfile(),
  ForgotOtpVerify.routeName: (context) => const ForgotOtpVerify(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  Notifications.routeName: (context) => const Notifications(),
  OtpVerify.routeName: (context) => const OtpVerify(),
  Profile.routeName: (context) => const Profile(),
  ResetPassword.routeName: (context) => const ResetPassword(),
  Signup.routeName: (context) => const Signup(),
  ChangePassword.routeName: (context) => const ChangePassword(),
  // =================18-04-2024==================//
  ServiceEmployeScreen.routeName: (context) => const ServiceEmployeScreen(),
  ProductScreenCategorie.routeName: (context) => const ProductScreenCategorie(),
  MostPopularVendorsScreen.routeName: (context) =>
      const MostPopularVendorsScreen(),
  MostPopularProductsScreen.routeName: (context) =>
      const MostPopularProductsScreen(),
  MostPopularServiceScreen.routeName: (context) =>
      const MostPopularServiceScreen(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  ServiceFooterScreen.routeName: (context) => const ServiceFooterScreen(),
  ServiceSubcategoryScreen.routeName: (context) =>
      const ServiceSubcategoryScreen(),
  //1.2 Home route
  Home.routeName: (context) => Home(),
  // 1.3 Location
  Location.routeName: (context) => const Location(),


    ChangeLanguage.routeName: (context) => const ChangeLanguage(),
  ManageAddress.routeName: (context) => const ManageAddress(),
  Wallet.routeName: (context) => const Wallet(),
  Booking.routeName: (context) => const Booking(),
  Products.routeName: (context) => const Products(),
  Services.routeName: (context) => const Services(),
  AddAddress1.routeName: (context) => const AddAddress1(),
  AddAddress2.routeName: (context) => const AddAddress2(),
  AddAddress3.routeName: (context) => const AddAddress3(),
  VendorInfo.routeName: (context) => const VendorInfo(),
  VendorServices.routeName: (context) => const VendorServices(),
  VendorReviews.routeName: (context) => const VendorReviews(),
  SendRequest.routeName: (context) => const SendRequest(),
  Quotation.routeName: (context) => const Quotation(),
  QuotationDetail.routeName: (context) => const QuotationDetail(),
  PendingDetails.routeName: (context) => const PendingDetails(),
  
};
