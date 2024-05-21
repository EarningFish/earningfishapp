import 'package:flutter/material.dart';
import 'package:guessme_s_application1/presentation/seller_screen_page/my_fish_screen_page.dart';
import 'package:guessme_s_application1/presentation/wallet_screen_page/wallet_screen_page.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../add_bank_details_screen_page/add_bank_details_screen_container1_page.dart';
import '../add_email_address_screen/add_email_address_screen.dart';
import '../add_nominee_details_screen/add_nominee_details_screen.dart';
import '../add_phone_number_screen/add_phone_number_screen.dart';
import '../enter_your_otp_screen/enter_your_otp_screen.dart';
import '../my_fish_main_screen/my_fish_main_screen.dart';
import '../my_fish_screen_page/my_fish_screen_page.dart';
import '../my_profile_screen_kyc_page/my_profile_screen_page.dart';
import '../my_profile_screen_page/my_profile_screen_page.dart';
import '../nominee_screen/nominee_screen.dart';
import '../play_screen_page/play_screen_page.dart';
import '../seller_screen/seller_screen.dart';
import 'bloc/play_screen_container_bloc.dart';
import 'models/play_screen_container_model.dart';

class PlayScreenContainerScreen extends StatelessWidget {
  PlayScreenContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PlayScreenContainerBloc>(
      create: (context) => PlayScreenContainerBloc(PlayScreenContainerState(
        playScreenContainerModelObj: PlayScreenContainerModel(),
      ))
        ..add(PlayScreenContainerInitialEvent()),
      child: PlayScreenContainerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayScreenContainerBloc, PlayScreenContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              child: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.playScreenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                  pageBuilder: (ctx, ani, ani1) =>
                      getCurrentPage(context, routeSetting.name!),
                  transitionDuration: Duration(seconds: 0),
                ),
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Wallet:
        return AppRoutes.walletScreen;
      case BottomBarEnum.Seller:
        return AppRoutes.sellerScreen;
      case BottomBarEnum.FishBowl:
        return AppRoutes.playScreenPage;
      case BottomBarEnum.Myfish:
        return AppRoutes.myFishMainScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.playScreenPage:
        return PlayScreenPage.builder(context);
      case AppRoutes.profileScreen:
        return MyProfileScreenPage.builder(context);
      case AppRoutes.profileScreenKyc:
        return MyProfileScreenKycPage.builder(context);
      case AppRoutes.emailAddressScreen:
        return AddEmailAddressScreen.builder(context);
      case AppRoutes.addPhoneNumberScreen:
        return AddPhoneNumberScreen.builder(context);
      case AppRoutes.nomineeScreen:
        return NomineeScreen.builder(context);
      case AppRoutes.enterOtpScreen:
        return EnterYourOtpScreen.builder(context);
      case AppRoutes.addNomineeDetailsScreen:
        return AddNomineeDetailsScreen.builder(context);
      case AppRoutes.myFishScreen:
        return MyFishScreenPage.builder(context);
      case AppRoutes.walletScreen:
        return WalletScreenPage.builder(context);
      case AppRoutes.myFishMainScreen:
        return NoFishFoundTabContainerPage.builder(context);
      case AppRoutes.sellerScreen:
        return SellerTabContainerPage.builder(context);
      case AppRoutes.sellerSubScreen:
        return SellerScreenPage.builder(context);
      case AppRoutes.playScreenContainerScreen:
        return PlayScreenContainerScreen.builder(context);
      case AppRoutes.addBankDetailsScreen:
        return AddBankDetailsScreen.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
