import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core/app_export.dart';
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get fillOnPrimaryContainer => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.h),
    borderSide: BorderSide.none,
  );
  static OutlineInputBorder get fillWhiteATL8 => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.h),
    borderSide: BorderSide.none,
  );
}
// class CustomTextFormField extends StatelessWidget {
//
//   CustomTextFormField(
//       {Key? key,
//       this.alignment,
//       this.width,
//       this.scrollPadding,
//       this.controller,
//       this.focusNode,
//       this.autofocus = false,
//       this.textStyle,
//       this.obscureText = false,
//       this.textInputAction = TextInputAction.next,
//       this.textInputType = TextInputType.text,
//       this.maxLines,
//       this.hintText,
//       this.hintStyle,
//       this.prefix,
//       this.prefixConstraints,
//       this.suffix,
//       this.suffixConstraints,
//       this.contentPadding,
//       this.borderDecoration,
//       this.fillColor,
//       this.filled = true,
//       this.validator})
//       : super(
//           key: key,
//         );
//
//   final Alignment? alignment;
//
//   final double? width;
//
//   final TextEditingController? scrollPadding;
//
//   final TextEditingController? controller;
//
//   final FocusNode? focusNode;
//
//   final bool? autofocus;
//
//   final TextStyle? textStyle;
//
//   final bool? obscureText;
//
//   final TextInputAction? textInputAction;
//
//   final TextInputType? textInputType;
//
//   final int? maxLines;
//
//   final String? hintText;
//
//   final TextStyle? hintStyle;
//
//   final Widget? prefix;
//
//   final BoxConstraints? prefixConstraints;
//
//   final Widget? suffix;
//
//   final BoxConstraints? suffixConstraints;
//
//   final EdgeInsets? contentPadding;
//
//   final InputBorder? borderDecoration;
//
//   final Color? fillColor;
//
//   final bool? filled;
//
//
//   final FormFieldValidator<String>? validator;
//
//   @override
//   Widget build(BuildContext context) {
//     return alignment != null
//         ? Align(
//             alignment: alignment ?? Alignment.center,
//             child: textFormFieldWidget(context))
//         : textFormFieldWidget(context);
//   }
//
//   Widget textFormFieldWidget(BuildContext context) => SizedBox(
//         width: width ?? double.maxFinite,
//         child: TextFormField(
//           scrollPadding:
//               EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//           controller: controller,
//           focusNode: focusNode,
//           onTapOutside: (event) {
//             if (focusNode != null) {
//               focusNode?.unfocus();
//             } else {
//               FocusManager.instance.primaryFocus?.unfocus();
//             }
//           },
//           autofocus: autofocus!,
//           style: textStyle ?? theme.textTheme.bodyMedium,
//           obscureText: obscureText!,
//           textInputAction: textInputAction,
//           keyboardType: textInputType,
//           maxLines: maxLines ?? 1,
//           decoration: decoration,
//           validator: validator,
//         ),
//       );
//   InputDecoration get decoration => InputDecoration(
//         hintText: hintText ?? "",
//         hintStyle: hintStyle ?? theme.textTheme.bodyMedium,
//         prefixIcon: prefix,
//         prefixIconConstraints: prefixConstraints,
//         suffixIcon: suffix,
//         suffixIconConstraints: suffixConstraints,
//         isDense: true,
//         contentPadding: contentPadding ?? EdgeInsets.all(14.h),
//         fillColor: fillColor ?? theme.colorScheme.onPrimaryContainer,
//         filled: filled,
//         border: borderDecoration ??
//             OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8.h),
//               borderSide: BorderSide(
//                 color: appTheme.blueGray50,
//                 width: 1,
//               ),
//             ),
//         enabledBorder: borderDecoration ??
//             OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8.h),
//               borderSide: BorderSide(
//                 color: appTheme.blueGray50,
//                 width: 1,
//               ),
//             ),
//         focusedBorder: borderDecoration ??
//             OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8.h),
//               borderSide: BorderSide(
//                 color: appTheme.blueGray50,
//                 width: 1,
//               ),
//             ),
//       );
// }

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.maxLength,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.keyboardType = TextInputType.text, // Added keyboardType with default value
    this.inputFormatters, // Added inputFormatters
  }) : super(key: key);

  final Alignment? alignment;
  final double? width;
  final TextEditingController? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final int? maxLength;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType; // Added keyboardType
  final List<TextInputFormatter>? inputFormatters; // Added inputFormatters

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
        alignment: alignment ?? Alignment.center,
        child: textFormFieldWidget(context))
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => SizedBox(
    width: width ?? double.maxFinite,
    child: TextFormField(
      scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: controller,
      focusNode: focusNode,
      onTapOutside: (event) {
        if (focusNode != null) {
          focusNode?.unfocus();
        } else {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      autofocus: autofocus!,
      style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
      obscureText: obscureText!,
      textInputAction: textInputAction!,
      keyboardType: keyboardType, // Use the defined keyboardType
      maxLines: maxLines ?? 1,
      maxLength: maxLength,
      decoration: decoration,
      inputFormatters: inputFormatters, // Use the provided inputFormatters
      validator: validator,
    ),
  );

  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle ?? theme.textTheme.bodyMedium,
    prefixIconConstraints: prefixConstraints,
    suffixIcon: suffix,
    suffixIconConstraints: suffixConstraints,
    isDense: true,
    contentPadding: contentPadding ?? EdgeInsets.all(14),
    fillColor: fillColor ?? theme.colorScheme.onPrimaryContainer,
    filled: filled,
    border: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.blueGrey[50]!,
            width: 1,
          ),
        ),
    enabledBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.blueGrey[50]!,
            width: 1,
          ),
        ),
    focusedBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.blueGrey[50]!,
            width: 1,
          ),
        ),
  );
}
