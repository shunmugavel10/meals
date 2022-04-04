library navigator;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spark/Modules/LoginPage/create_password_page.dart';
import 'package:spark/Modules/LoginPage/login.dart';
import 'package:spark/Modules/Vendor/vendor.dart';
import 'package:spark/Modules/createprofile/create_profile.dart';
import 'package:spark/Modules/signUp/otp_verification_page.dart';



class Navigate extends Module {

 // Provide a list of dependencies to inject into your project
 @override
 List<Bind> get binds => [];


  static const String emailOtpVerifyPage = '/emailOtpVerifyPage';
  static const String createProfile = '/createProfile';
  static const String loginPage = '/loginPage';
    static const String createPasswordPage = '/createPasswordPage';
      static const String vendorPage = '/vendorPage';


 @override
 List<ModularRoute> get routes => [
  ChildRoute(emailOtpVerifyPage, child: (_, args) => EmailOtpVerifyPage(email: args.data)),
  ChildRoute(createProfile, child: (_, args) => CreateProfile(email: args.data)),
  ChildRoute(loginPage, child: (_, args) => LoginPage()),
 ChildRoute(createPasswordPage, child: (_, args) => CreatePasswordPage()),
 ChildRoute(vendorPage, child: (_, args) => VendorPage()),
 ];
}
