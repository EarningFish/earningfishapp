// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
//
// class CustomPinCodeTextField extends StatelessWidget {
//   CustomPinCodeTextField({
//     Key? key,
//     required this.context,
//     required this.onChanged,
//     this.alignment,
//     this.controller,
//     this.textStyle,
//     this.hintStyle,
//     this.validator,
//   }) : super(key: key);
//
//   final Alignment? alignment;
//   final BuildContext context;
//   final TextEditingController? controller;
//   final TextStyle? textStyle;
//   final TextStyle? hintStyle;
//   final Function(String) onChanged;
//   final FormFieldValidator<String>? validator;
//
//   @override
//   Widget build(BuildContext context) {
//     return alignment != null
//         ? Align(
//       alignment: alignment ?? Alignment.center,
//       child: pinCodeTextFieldWidget,
//     )
//         : pinCodeTextFieldWidget;
//   }
//
//   Widget get pinCodeTextFieldWidget => PinCodeTextField(
//     appContext: context,
//     controller: controller,
//     length: 4,
//     keyboardType: TextInputType.number,
//     textStyle: textStyle ?? TextStyle(color: Colors.black), // White text color
//     hintStyle: hintStyle ?? TextStyle(color: Colors.black), // White hint color
//     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//     enableActiveFill: true,
//     pinTheme: PinTheme(
//       shape: PinCodeFieldShape.box,
//       borderRadius: BorderRadius.circular(5.0), // Set the border radius as needed
//       fieldHeight: 60.0, // Set the height of each box
//       fieldWidth: 60.0, // Set the width of each box
//       activeFillColor: Colors.white, // No fill color when active
//       inactiveFillColor: Colors.white, // No fill color when inactive
//       selectedFillColor: Colors.white, // No fill color when selected
//       activeColor: Colors.white, // White border color when active
//       inactiveColor: Colors.white, // White border color when inactive
//       selectedColor: Colors.white, // White border color when selected
//     ),
//     onChanged: (value) => onChanged(value),
//     validator: validator,
//   );
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(key: key);

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Function(String) onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: pinCodeTextFieldWidget,
    )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
    appContext: context,
    controller: controller,
    length: 4,
    keyboardType: TextInputType.number,
    textStyle:
    textStyle ?? TextStyle(color: Colors.black), // White text color
    hintStyle:
    hintStyle ?? TextStyle(color: Colors.black), // White hint color
    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    enableActiveFill: true,
    pinTheme: PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(5.0), // Set the border radius as needed
      fieldHeight: 60.0, // Set the height of each box
      fieldWidth: 60.0, // Set the width of each box
      activeFillColor: Colors.white, // No fill color when active
      inactiveFillColor: Colors.white, // No fill color when inactive
      selectedFillColor: Colors.white, // No fill color when selected
      activeColor: Colors.white, // White border color when active
      inactiveColor: Colors.white, // White border color when inactive
      selectedColor: Colors.white, // White border color when selected
    ),
    onChanged: (value) => onChanged(value),
    validator: validator,
  );
}
