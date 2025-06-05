import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/home_page.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/pin_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_pin_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_success_page.dart';
import 'package:bank_sha/ui/pages/profile_page.dart';
import 'package:bank_sha/ui/pages/sign_in_page.dart';
import 'package:bank_sha/ui/pages/sign_up_ktp_profile.dart';
import 'package:bank_sha/ui/pages/sign_up_page.dart';
import 'package:bank_sha/ui/pages/sign_up_set_profile.dart';
import 'package:bank_sha/ui/pages/sign_up_success_page.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:bank_sha/ui/pages/top_up_amount_page.dart';
import 'package:bank_sha/ui/pages/top_up_page.dart';
import 'package:bank_sha/ui/pages/top_up_success.dart';
import 'package:bank_sha/ui/pages/transfer_amount_page.dart';
import 'package:bank_sha/ui/pages/transfer_page.dart';
import 'package:bank_sha/ui/pages/transfer_success_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: lightBackgroundColor,
          iconTheme: IconThemeData(color: blackColor),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/sign-up-set-profile': (context) => SignUpSetProfile(),
        '/sign-up-ktp-profile': (context) => SignUpKtpProfile(),
        '/sign-up-success': (context) => SignUpSuccessPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/profile-edit': (context) => ProfileEditPage(),
        '/profile-edit-pin': (context) => ProfileEditPinPage(),
        '/profile-edit-success': (context) => ProfileEditSuccessPage(),
        '/pin': (context) => PinPage(),
        '/topup': (context) => TopUpPage(),
        '/topup-amount': (context) => TopUpAmountPage(),
        '/topup-success': (context) => TopUpSuccess(),
        '/transfer': (context) => TransferPage(),
        '/transfer-amount': (context) => TransferAmountPage(),
        '/transfer-success': (context) => TransferSuccessPage(),
      },
    );
  }
}
