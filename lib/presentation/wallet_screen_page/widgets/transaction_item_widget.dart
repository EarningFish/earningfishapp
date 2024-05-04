import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/transaction_item_model.dart';

class TransactionItemWidget extends StatelessWidget {
  TransactionItemWidget(this.transactionItemModelObj, {Key? key})
      : super(
          key: key,
        );

  TransactionItemModel transactionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: transactionItemModelObj.userImage!,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
          margin: EdgeInsets.only(bottom: 17.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            top: 2.v,
            // right: 50
            // bottom: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionItemModelObj.transactionTitl!,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(
                  width: 182.h,
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "4065550120".tr,
                          style: CustomTextStyles.bodySmallBluegray900,
                        ),
                        Text(
                          "3 Dec 2022".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        Text(
                          "2:00 PM".tr,
                          style: theme.textTheme.bodySmall,
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                transactionItemModelObj.transactionAmou!,
                style: theme.textTheme.titleSmall,
              ),
              Text(
                transactionItemModelObj.transactionType!,
                style: CustomTextStyles.bodySmallRed400,
              )
            ],
          ),
        )
      ],
    );
  }
}
