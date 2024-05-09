import 'package:flutter/material.dart';
import 'package:guessme_s_application1/core/app_export.dart';
import 'package:guessme_s_application1/presentation/apply_promocode_screen/bloc/apply_promocode_bloc.dart';
import '../../widgets/custom_elevated_button.dart';
import 'models/apply_promocode_model.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';

class ApplyPromocodeScreen extends StatefulWidget {
  ApplyPromocodeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ApplyPromocodeBloc>(
      create: (context) => ApplyPromocodeBloc(ApplyPromocodeState(
        loginModelObj: ApplyPromocodeScreenModel(),
      ))
        ..add(ApplyPromocodeInitialEvent()),
      child: ApplyPromocodeScreen(),
    );
  }

  @override
  State<ApplyPromocodeScreen> createState() => _ApplyPromocodeScreenState();
}

class _ApplyPromocodeScreenState extends State<ApplyPromocodeScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: _buildAppBarWidget(context),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildColumnPromocodeFormFieldWidget(context),
                  _buildSizedBoxWidget(context),
                  _buildDividerWithTextWidget(context),
                  _buildSizedBoxWidget(context),
                  _buildCouponsWidget(context),
                ],
              ),
            ),
          ),
          bottomNavigationBar: _buildCustomElevatedButtonWidget(context),
        ),
      ),
    );
  }

  ////Widget of this page used
  ///
  /// AppBar Widget
  PreferredSizeWidget _buildAppBarWidget(BuildContext context) {
    return CustomAppBar(
      height: 90.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLeftArrow,
        margin: EdgeInsets.only(left: 10.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Apply Promocode".tr,
      ),
    );
  }

  ///FormField Widget
  ///
  Widget _buildSizedBoxWidget(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }

  ///FormField Widget
  ///
  Widget _buildColumnPromocodeFormFieldWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<ApplyPromocodeBloc, ApplyPromocodeState,
          TextEditingController?>(
        selector: (state) => state.promocodeController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "Enter Your Promocode".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter a valid Promocode or voucher code \nMin. txn value Rs.10000 or more";
              } else if (double.parse(value) <= 0) {
                return "Negative number are invalid";
              }
            },
          );
        },
      ),
    );
  }

  /// Divider widget
  ///
  Widget _buildDividerWithTextWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
      ),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            thickness: 1,
            color: Colors.grey,
          )),
          Text(" OR SELECT AN OFFER (5) "),
          Expanded(
              child: Divider(
            thickness: 1,
            color: Colors.grey,
          )),
        ],
      ),
    );
  }

  /// Coupons Widgets
  ///
  Widget _buildCouponsWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 122.h,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              child: SizedBox(
                height: 66.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child:
                                Image.asset("assets/images/gift_box_image.png"),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Win Cashback worth 1000 \nFishcoins",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Add Money to your wallet and win \nFlat 1000 Fishcoins",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Container(
                      height: 26.h,
                      width: 53.v,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 223, 217, 217),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Apply",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                              color: Color.fromARGB(255, 9, 72, 122)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 240),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 90,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "WALLET10 ",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Offer details",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Elevated Button Widget
  ///
  Widget _buildCustomElevatedButtonWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 1,
        vertical: 20,
      ),
      child: CustomElevatedButton(
        text: "Apply Offer".tr,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        buttonTextStyle: theme.textTheme.titleMedium!,
        onPressed: () {
          if (_formKey.currentState!.validate()) {}
          // Navigator.pushNamed(context, AppRoutes.authenticationRequiredScreen);
        },
      ),
    );
  }
}
