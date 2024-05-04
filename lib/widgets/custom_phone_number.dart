import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../core/app_export.dart';
import '../core/utils/validation_functions.dart';
import 'custom_text_form_field.dart';

class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {Key? key,
      required this.country,
      required this.onTap,
      required this.controller})
      : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _openCountryPicker(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
              border: Border.all(
                color: appTheme.blueGray50,
                width: 1.h,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 14.v,
                    bottom: 14.v,
                  ),
                  child: CountryPickerUtils.getDefaultFlagImage(
                    country,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(7.h, 14.v, 14.h, 14.v),
                  child: Text(
                    "+${country.phoneCode}",
                    style: theme.textTheme.titleSmall,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: CustomTextFormField(
              width: 246.h,
              controller: controller,
              hintText: "Enter Your Number".tr,
              textInputType: TextInputType.number,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 7.h, 16.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgDeleteback2fill1,
                  height: 16.v,
                  width: 21.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 48.v,
              ),
              validator: (value) {
                if (!isNumeric(value)) {
                  return "err_msg_please_enter_valid_number".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.only(
                left: 18.h,
                top: 14.v,
                bottom: 14.v,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          )
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
