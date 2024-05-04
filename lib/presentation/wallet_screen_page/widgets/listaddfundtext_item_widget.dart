import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listaddfundtext_item_model.dart';

class ListaddfundtextItemWidget extends StatelessWidget {
  ListaddfundtextItemWidget(this.listaddfundtextItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListaddfundtextItemModel listaddfundtextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x26393939),
                          blurRadius: 40,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: CustomImageView(
                      imagePath: listaddfundtextItemModelObj.walletImage!,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                listaddfundtextItemModelObj.addFundText!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                ),
              ),
            )
          ],
        ),
      );
  }
}
