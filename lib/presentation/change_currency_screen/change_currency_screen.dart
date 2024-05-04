import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/change_currency_bloc.dart';
import 'models/change_currency_model.dart';
import 'models/currencyfield_item_model.dart';
import 'widgets/currencyfield_item_widget.dart';

class ChangeCurrencyScreen extends StatelessWidget {
  const ChangeCurrencyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChangeCurrencyBloc>(
      create: (context) => ChangeCurrencyBloc(ChangeCurrencyState(
        changeCurrencyModelObj: ChangeCurrencyModel(),
      ))
        ..add(ChangeCurrencyInitialEvent()),
      child: ChangeCurrencyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              BlocSelector<ChangeCurrencyBloc, ChangeCurrencyState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search_here".tr,
                  );
                },
              ),
              SizedBox(height: 20.v),
              _buildCurrencyField(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 26.v,
      leadingWidth: 359.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorStroke,
        margin: EdgeInsets.fromLTRB(20.h, 3.v, 330.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrencyField(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: BlocSelector<ChangeCurrencyBloc, ChangeCurrencyState,
          ChangeCurrencyModel?>(
        selector: (state) => state.changeCurrencyModelObj,
        builder: (context, changeCurrencyModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Opacity(
                opacity: 0.1,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0.v),
                  child: SizedBox(
                    width: 280.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.gray40063,
                    ),
                  ),
                ),
              );
            },
            itemCount:
                changeCurrencyModelObj?.currencyfieldItemList.length ?? 0,
            itemBuilder: (context, index) {
              CurrencyfieldItemModel model =
                  changeCurrencyModelObj?.currencyfieldItemList[index] ??
                      CurrencyfieldItemModel();
              return CurrencyfieldItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
