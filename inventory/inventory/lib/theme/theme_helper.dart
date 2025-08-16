import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray50,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: colorScheme.primary.withOpacity(0.35),
          elevation: 6,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray60001,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray60001,
          fontSize: 16.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 14.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 55.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 44.fSize,
          fontFamily: 'Rajdhani',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 8.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF5884FF),
    primaryContainer: Color(0XFF252628),
    secondaryContainer: Color(0XFF898B93),
    errorContainer: Color(0XFF005EE2),
    onError: Color(0X265884FF),
    onErrorContainer: Color(0XFF000F31),
    onPrimary: Color(0XFF151313),
    onPrimaryContainer: Color(0XFFCED6FF),
    onSecondaryContainer: Color(0XFF141414),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber500 => Color(0XFFFBBC05);
// Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue50 => Color(0XFFECEFFF);
  Color get blue5001 => Color(0XFFE9EFFF);
  Color get blue900 => Color(0XFF003F9C);
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFD6D6D6);
  Color get blueGray10002 => Color(0XFFD8D8DB);
  Color get blueGray600 => Color(0XFF615E82);
  Color get blueGray900 => Color(0XFF1E1B39);
// DeepPurple
  Color get deepPurple50 => Color(0XFFECE8FF);
// Gray
  Color get gray100 => Color(0XFFF3F3FF);
  Color get gray200 => Color(0XFFE9E7E7);
  Color get gray400 => Color(0XFFB2B2B2);
  Color get gray50 => Color(0XFFF8F9FF);
  Color get gray600 => Color(0XFF858585);
  Color get gray60001 => Color(0XFF7A7371);
  Color get gray60002 => Color(0XFF828282);
  Color get gray60003 => Color(0XFF6E6E6E);
  Color get gray60059 => Color(0X59A58258);
  Color get gray700 => Color(0XFF56504F);
  Color get gray70001 => Color(0XFF65676D);
  Color get gray800 => Color(0XFF444549);
  Color get gray900 => Color(0XFF101112);
  Color get gray90001 => Color(0XFF212023);
// Green
  Color get greenA700 => Color(0XFF10D100);
// Indigo
  Color get indigo900 => Color(0XFF00225C);
  Color get indigoA100 => Color(0XFF99ADFF);
// Red
  Color get red500 => Color(0XFFEA4335);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

