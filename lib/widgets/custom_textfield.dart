import 'package:ads_test/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
/* 
  WIDGET BOOKING TEXTFIELD
  widget ini menampilkan textfield 
  yang dapat langsung dikustomisasi.
  
  note : ini cuman dipakai untuk form booking/pemesanan
*/

/// Widget ini menampilkan sebuah `TextFormField` yang dapat langsung dikustomisasi
///
/// Saat ini parameter yang disediakan masih boleh `Nullable`
///
/// Parameter [inline] digunakan jika ingin mengubah `Border` textfield yang semulanya `Outline` menjadi `Underline`
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.label,
    this.labelBehavior = FloatingLabelBehavior.auto,
    this.hint,
    this.inline = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.autovalidateMode,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.enabled,
    this.onTap,
    this.isDense = false,
    this.isObscure = false,
    this.maxLength,
    this.icon,
    this.textStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.minLines,
    this.maxLines = 1,
    this.onChanged,
    this.initialValue,
    this.hintStyle,
    this.readOnly = false,
    this.showCursor,
    this.borderWidth = 1.0,
    this.fillColor,
    this.labelTextStyle,
    this.isCollapsed = false,
    this.inputFormatters,
    this.onSaved,
    this.textAlign = TextAlign.start,
    this.suffixText,
  }) : super(key: key);

  final String? label;
  final FloatingLabelBehavior labelBehavior;
  final String? hint;
  final bool inline;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final AutovalidateMode? autovalidateMode;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final Function()? onTap;
  final bool isDense;
  final bool isObscure;
  final int? maxLength;
  final Widget? icon;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? suffixText;
  final TextStyle? textStyle;
  final int? minLines;
  final int? maxLines;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final String? initialValue;
  final TextStyle? hintStyle;
  final bool readOnly;
  final bool? showCursor;
  final double borderWidth;
  final Color? fillColor;
  final TextStyle? labelTextStyle;
  final double borderRadius = 100;
  final bool isCollapsed;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: textAlign,
      inputFormatters: inputFormatters,
      obscureText: isObscure,
      onTap: onTap,
      enabled: enabled,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      autovalidateMode: autovalidateMode,
      keyboardType: keyboardType,
      validator: validator,
      initialValue: initialValue,
      maxLength: maxLength,
      controller: controller,
      style: textStyle,
      minLines: minLines,
      maxLines: maxLines,
      onChanged: onChanged,
      readOnly: readOnly,
      showCursor: showCursor,
      onSaved: onSaved,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        filled: true,
        fillColor: fillColor ?? textOnPrimary,
        icon: icon,
        isCollapsed: isCollapsed,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffixText: suffixText,
        hintStyle: hintStyle,
        // labelStyle: blueText,
        isDense: isDense,
        labelText: label,
        // floatingLabelStyle: blackMediumText,
        // label: Text(label),
        labelStyle: labelTextStyle,
        floatingLabelBehavior: labelBehavior,
        hintText: hint,

        border: !inline
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: greyColor, width: borderWidth),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(color: greyColor, width: borderWidth),
              ),
        focusedBorder: !inline
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: greyColor, width: borderWidth),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(color: greyColor, width: borderWidth),
              ),
        enabledBorder: !inline
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: greyColor, width: borderWidth),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(color: greyColor, width: borderWidth),
              ),
      ),
    );
  }
}
