import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

/* 
  WIDGET TOMBOL DENGAN LATAR BELAKANG
  widget ini menampilkan tombol yang dapat
  langsung dikustomisasi.
*/

/// Widget ini digunakan untuk menampilkan `ElevatedButton` yang dapat langsung dikustomisasi.
class CustomButton extends StatelessWidget {
  /// Parameter [text], [width] dan [onPressed], harus diisi
  /// agar `CustomButton` dapat ditampilkan.
  const CustomButton({
    super.key,
    this.height,
    this.width,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.textStyle,
    this.borderRadius = 55.0,
    this.prefixIcon,
    this.suffixIcon,
    this.textAlign,
    this.borderWidth = 1.0,
    this.elevation = 0,
    this.disable = false,
  });

  /// Field ini digunakan untuk menampilkan teks yang ada didalam `ElevatedButton`.
  final String text;

  /// Field ini digunakan untuk mengatur tinggi dari `ElevatedButton`.
  final double? height;

  /// Field ini digunakan untuk mengatur lebar dari `ElevatedButton`.
  final double? width;

  /// Field ini digunakan untuk menentukan aksi ketika `ElevatedButton` ditekan.
  final Function()? onPressed;

  /// Field ini digunakan untuk mengatur warna dari `ElevatedButton`.
  final Color? backgroundColor;

  /// Field ini digunakan untuk mengatur warna `Border`.
  final Color? borderColor;

  /// Field ini digunakan untuk mengatur ketebalan `Border`.
  final double borderWidth;

  /// Field ini digunakan untuk mengubah style dari teks yang terdapat didalam `ElevatedButton`.
  final TextStyle? textStyle;

  /// Field ini digunakan untuk mengubah ukuran `BorderRadius`.
  final double borderRadius;

  /// Field ini digunakan untuk menampilkan icon disebelah kiri teks.
  final Widget? prefixIcon;

  /// Field ini digunakan untuk menampilkan icon disebelah kanan teks.
  final Widget? suffixIcon;

  /// Field ini digunakan untuk menampilkan mengubah `Alignment` teks.
  final TextAlign? textAlign;

  final double elevation;

  final bool disable;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disable ? null : onPressed,
      style: ElevatedButton.styleFrom(
        shadowColor: primaryColor,
        fixedSize:
            width != null && height != null ? Size(width!, height!) : null,
        minimumSize: width != null && height != null ? const Size(0, 0) : null,
        backgroundColor: backgroundColor ?? secondaryColor,
        // disabledBackgroundColor: buttonDisableColor,
        elevation: disable ? 0 : elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            width: borderWidth,
            color: borderColor ?? secondaryColor,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: prefixIcon != null,
            child: prefixIcon != null
                ? Padding(
                    padding: EdgeInsets.only(right: 2.w),
                    child: prefixIcon!,
                  )
                : const Center(),
          ),
          Flexible(
            child: Text(
              text,
              style: textStyle ?? onPrimaryTextStyle,
              textAlign: textAlign,
            ),
          ),
          Visibility(
            visible: suffixIcon != null,
            child: suffixIcon != null ? suffixIcon! : const Center(),
          ),
        ],
      ),
    );
  }
}
