import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/my_fish_screen_bloc.dart';
import 'models/my_fish_screen_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

class MyFishScreenPage extends StatefulWidget {
  const MyFishScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyFishScreenPageState createState() => MyFishScreenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyFishScreenBloc>(
      create: (context) => MyFishScreenBloc(MyFishScreenState(
        myFishScreenModelObj: MyFishScreenModel(),
      ))
        ..add(MyFishScreenInitialEvent()),
      child: MyFishScreenPage(),
    );
  }
}

class MyFishScreenPageState extends State<MyFishScreenPage>
    with AutomaticKeepAliveClientMixin<MyFishScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.v),
                Column(
                  children: [
                    _buildSearchFilterRow(context),
                    SizedBox(height: 21.v),
                    _buildFishesCounterColumn(context),
                    SizedBox(height: 15.v),
                    // _buildCreatefromViewStack(context),
                    // SizedBox(height: 15.v),
                    // _buildFishboxColumn(context)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchFilterRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<MyFishScreenBloc, MyFishScreenState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "search here".tr,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: CustomIconButton(
              height: 44.v,
              width: 42.h,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillIndigo,
              child: CustomImageView(
                imagePath: ImageConstant.imgFilterWhite,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFishesCounterColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "2 Fish".tr,
            style: CustomTextStyles.bodyMediumGray60001,
          ),
          SizedBox(height: 11.v),
          BlocSelector<MyFishScreenBloc, MyFishScreenState, MyFishScreenModel?>(
            selector: (state) => state.myFishScreenModelObj,
            builder: (context, myFishScreenModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15.v,
                  );
                },
                itemCount:
                    myFishScreenModelObj?.userprofileItemList.length ?? 0,
                itemBuilder: (context, index) {
                  UserprofileItemModel model =
                      myFishScreenModelObj?.userprofileItemList[index] ??
                          UserprofileItemModel();
                  return UserprofileItemWidget(
                    model,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }



}
