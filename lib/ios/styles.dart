import 'package:flutter/cupertino.dart';

const brightness = Brightness.light; //cor de fundo
const primaryColor = const Color(0xFF2AACFF); //cor primaria
const accentColor = const Color(0xFFFFFFFF);

CupertinoThemeData iosTheme() {
  return CupertinoThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
  );
}
