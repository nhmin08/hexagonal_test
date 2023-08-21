import 'package:flutter/material.dart';

import 'package:hexagonal_test/utils/theme/godoc_color.dart';

class GodocTheme{
  static final ThemeData lightTheme = ThemeData(
      extensions:  const <ThemeExtension<dynamic>>[
        GodocColors.light,
      ]
  );

  static final ThemeData darkTheme = ThemeData(
      extensions:  const <ThemeExtension<dynamic>>[
        GodocColors.dark,
      ]
  );
}