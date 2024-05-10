import 'package:flutter/material.dart';
import 'package:guessme_s_application1/presentation/apply_promocode_screen/apply_promocode_screen.dart';
import '../presentation/add_email_address_screen/add_email_address_screen.dart';
import '../presentation/add_nominee_details_screen/add_nominee_details_screen.dart';
import '../presentation/add_phone_number_screen/add_phone_number_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/authentication_required_screen/authentication_required_screen.dart';
import '../presentation/change_currency_screen/change_currency_screen.dart';
import '../presentation/continue_with_google_screen/continue_with_google_screen.dart';
import '../presentation/continue_with_mobile_number_screen/create_an_account_screen.dart';
import '../presentation/enter_your_otp_screen/enter_your_otp_screen.dart';
import '../presentation/forgot_password_confirm_screen/forgot_password_confirm_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/forgot_password_screen_one_screen/forgot_password_screen_one_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/my_fish_main_screen/my_fish_main_screen.dart';
import '../presentation/my_fish_screen_page/my_fish_screen_page.dart';
import '../presentation/my_profile_screen_kyc_page/my_profile_screen_page.dart';
import '../presentation/my_profile_screen_page/my_profile_screen_page.dart';
import '../presentation/nominee_screen/nominee_screen.dart';
import '../presentation/otp_for_confirm_password_screen/enter_your_otp_screen.dart';
import '../presentation/play_screen_container_screen/play_screen_container_screen.dart';
import '../presentation/seller_screen/seller_screen.dart';
import '../presentation/seller_screen_page/my_fish_screen_page.dart';
import '../presentation/sign_in_with_password_screen/login_screen_signin.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/play_screen_page/play_screen_page.dart';
import '../presentation/wallet_screen_page/wallet_screen_page.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String authenticationRequiredScreen =
      '/authentication_required_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String enterOtpScreen = '/enter_your_otp_screen';

  static const String forgotPasswordScreenOneScreen =
      '/forgot_password_screen_one_screen';

  static const String forgotPasswordConfirmScreen =
      '/forgot_password_confirm_screen_one_screen';

  static const String initialRoute = '/initialRoute';

  static const String changeCurrencyScreen = '/change_currency_screen';

  static const String continueWithEmailScreen = '/continue_with_email_screen';

  static const String continueWithMobileNumberScreen =
      '/continue_with_mobile_number_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpOtpScreen = '/sign_up_otp_screen';

  static const String signInWithPassword = '/sign_in_with_password_screen';

  static const String otpForConfirmPassword = '/otp_for_confirm_password';

  static const String profileScreen = '/my_profile_screen_page';

  static const String profileScreenKyc = '/my_profile_screen_kyc_page';

  static const String emailAddressScreen = '/add_email_address_screen';

  static const String addPhoneNumberScreen = '/add_phone_number_screen';

  static const String nomineeScreen = '/nominee_screen';

  static const String addNomineeDetailsScreen = '/add_nominee_details_screen';

  static const String playScreenPage = '/play_screen_page';

  static const String playScreenContainerScreen =
      '/play_screen_container_screen';

  static const String myFishScreen = '/my_fish_screen_page';

  static const String walletScreen = '/wallet_screen_page';

  static const String myFishMainScreen = '/my_fish_main_screen';

  static const String sellerScreen = '/seller_screen';

  static const String sellerSubScreen = '/seller_screen_page';

  static const String appiyPromocadeScreen = '/appiy_promocade_screen';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        // authenticationRequiredScreen: AuthenticationRequiredScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder,
        playScreenPage: PlayScreenPage.builder,
        playScreenContainerScreen: PlayScreenContainerScreen.builder,
        enterOtpScreen: EnterYourOtpScreen.builder,
        forgotPasswordScreenOneScreen: ForgotPasswordScreenOneScreen.builder,
<<<<<<< HEAD
       forgotPasswordConfirmScreen: ForgotPasswordConfirmScreen.builder,
       changeCurrencyScreen: ChangeCurrencyScreen.builder,
       signUpScreen: SignUpScreen.builder,
       continueWithEmailScreen: ContinueWithEmailScreen.builder,
       continueWithMobileNumberScreen: ContinueWithMobileNumberScreen.builder,
       signUpOtpScreen: EnterYourOtpScreen.builder,
       signInWithPassword: SignInWithPassword.builder,
       otpForConfirmPassword:OtpConfirmPasswordScreen.builder,
       profileScreen:MyProfileScreenPage.builder,
       profileScreenKyc:MyProfileScreenKycPage.builder,
       addPhoneNumberScreen:AddPhoneNumberScreen.builder,
       emailAddressScreen:AddEmailAddressScreen.builder,
       nomineeScreen:NomineeScreen.builder,
       addNomineeDetailsScreen:AddNomineeDetailsScreen.builder,
        myFishScreen:MyFishScreenPage.builder,
        walletScreen:WalletScreenPage.builder,
        myFishMainScreen:NoFishFoundTabContainerPage.builder,
        sellerScreen:SellerTabContainerPage.builder,
        sellerSubScreen:SellerScreenPage.builder,
  };
=======
        forgotPasswordConfirmScreen: ForgotPasswordConfirmScreen.builder,
        changeCurrencyScreen: ChangeCurrencyScreen.builder,
        signUpScreen: SignUpScreen.builder,
        continueWithEmailScreen: ContinueWithEmailScreen.builder,
        continueWithMobileNumberScreen: ContinueWithMobileNumberScreen.builder,
        signUpOtpScreen: EnterYourOtpScreen.builder,
        signInWithPassword: SignInWithPassword.builder,
        otpForConfirmPassword: OtpConfirmPasswordScreen.builder,
        profileScreen: MyProfileScreenPage.builder,
        profileScreenKyc: MyProfileScreenKycPage.builder,
        addPhoneNumberScreen: AddPhoneNumberScreen.builder,
        emailAddressScreen: AddEmailAddressScreen.builder,
        nomineeScreen: NomineeScreen.builder,
        addNomineeDetailsScreen: AddNomineeDetailsScreen.builder,
        myFishScreen: MyFishScreenPage.builder,
        walletScreen: WalletScreenPage.builder,
        myFishMainScreen: NoFishFoundTabContainerPage.builder,
        sellerScreen: SellerTabContainerPage.builder,
        sellerSubScreen: SellerScreenPage.builder,
        appiyPromocadeScreen: ApplyPromocodeScreen.builder,
      };
>>>>>>> f35cb409e419b0fc857d2ef7eb2a61e9d9db8d7a
}
