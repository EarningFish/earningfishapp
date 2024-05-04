import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/currencyfield_item_model.dart';

class CurrencyfieldItemWidget extends StatelessWidget {
  CurrencyfieldItemWidget(this.currencyfieldItemModelObj, {Key? key})
      : super(
          key: key,
        );

  CurrencyfieldItemModel currencyfieldItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.v,
      width: 280.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 28.h),
              decoration: AppDecoration.fillOnErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.v),
                  Text(
                    currencyfieldItemModelObj.euro!,
                    style: theme.textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: currencyfieldItemModelObj.image!,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(bottom: 18.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 12.v,
                    bottom: 13.v,
                  ),
                  child: Text(
                    currencyfieldItemModelObj.euroone!,
                    style: CustomTextStyles.bodySmallGray600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
