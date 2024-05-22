import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/add_bank_details_screen_container1_bloc.dart';
import 'models/add_bank_details_screen_container1_model.dart';


class BankDetailsScreen extends StatelessWidget {
  BankDetailsScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddBankDetailsScreenContainer1Bloc>(
      create: (context) => AddBankDetailsScreenContainer1Bloc(
          AddBankDetailsScreenContainer1State(
            addBankDetailsScreenContainer1ModelObj:
            AddBankDetailsScreenContainer1Model(),
          ))
        ..add(AddBankDetailsScreenContainer1InitialEvent()),
      child: BankDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 9.v),
                  _buildBankName(context),
                  SizedBox(height: 10.v),
                     ]
                    ),
                  )
                 ),
            ),
          ),
        );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 90.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLeftArrow,
        margin: EdgeInsets.only(
          left: 10.h,
          bottom: 2.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Bank Details".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildBankName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocSelector<AddBankDetailsScreenContainer1Bloc,
            AddBankDetailsScreenContainer1State, TextEditingController?>(
          selector: (state) => state.nameController,
          builder: (context, nameController) {
            return TextFormField(
              decoration: InputDecoration(
                hintText: 'Add Bank',
                hintStyle: TextStyle(color: Color(0xFF080450)), // Set hint text color
                prefixIcon: Icon(Icons.add, color: Color(0xFF080450)), // Set prefix icon color
                suffixIcon: Icon(Icons.arrow_forward_ios,color: Color(0xFF080450)), // Set suffix icon color
                isDense: true,
                contentPadding: EdgeInsets.all(14),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.blueGrey[50]!,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.blueGrey[50]!,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.blueGrey[50]!,
                      width: 1,
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }

  Widget _buildContainer(BuildContext context) {
   return Container(
      width: 319,
      height: 22,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.20,
            child: Transform(
              transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
              child: Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'BANK DETAILS',
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 14,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
              height: 0.11,
            ),
          ),
          const SizedBox(width: 10),
          Opacity(
            opacity: 0.20,
            child: Transform(
              transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
              child: Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
