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
                  SizedBox(height: 20.v),
                  _buildDividerWithTextWidget(context),
                  SizedBox(height: 20.v),
                  _bankDetailsColumn(context),
                  SizedBox(height: 20.v),
                  _bankDetailsColumn2(context),
                  SizedBox(height: 20.v),

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
  Widget _buildDividerWithTextWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
      ),
      child: Row(
        children: [
          Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Text(
              'BANK DETAILS',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
          ),
          Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }

  Widget _bankDetailsColumn(BuildContext context){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 5.v,bottom: 6.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   SizedBox(width: 121.h,
                   child: RichText(
                     text: TextSpan(
                       children: [
                         TextSpan(
                           text: 'State Bank of India\n',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 14,
                             fontFamily: 'DM Sans',
                             fontWeight: FontWeight.w400,
                             height: 0.11,
                           ),
                         ),
                         TextSpan(
                             text: '*********1579'.tr,
                             style: theme.textTheme.bodySmall
                         )
                       ],
                     ),
                     textAlign: TextAlign.left,
                   ),
                   ),
                    Container(
                      width: 70,
                      height: 23,
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: ShapeDecoration(
                        color: Color(0x3331B77C),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'PRIMARY',
                            style: TextStyle(
                              color: Color(0xFF31B77C),
                              fontSize: 12,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 0.10,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Icon(Icons.edit,color: Colors.grey,size: 15,),
              ),
              Icon(Icons.delete,color: Colors.grey,size: 15,)
            ],
          ),
        ),
      ],
    );
  }
  Widget _bankDetailsColumn2(BuildContext context){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 5.v,bottom: 6.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 121.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Bank of Baroda\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                            TextSpan(
                                text: '*********1579'.tr,
                                style: theme.textTheme.bodySmall
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Make Primary',
                style: TextStyle(
                  color: Color(0xFF080450),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  height: 0.10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(Icons.edit,color: Colors.grey,size: 15,),
              ),
              Icon(Icons.delete,color: Colors.grey,size: 15,)
            ],
          ),
        ),
      ],
    );
  }

}
