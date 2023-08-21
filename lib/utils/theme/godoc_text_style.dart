import 'package:flutter/material.dart';

import 'package:hexagonal_test/utils/theme/godoc_color.dart';

class GodocTextStyle {
  final BuildContext context;

  GodocTextStyle(this.context);

  GodocColors get godocColors => Theme.of(context).extension<GodocColors>()!;

  late TextStyle title = TextStyle(
      color: godocColors.godocGray600,
      fontSize: 35,
      fontWeight: FontWeight.bold
  );

  late TextStyle headline = TextStyle(
    color: godocColors.godocGray600,
    fontSize: 21,
    fontWeight: FontWeight.bold
  );

  late TextStyle headline2 = TextStyle(
      color: godocColors.godocGray600,
      fontSize: 16,
      fontWeight: FontWeight.bold
  );

  late TextStyle headline3 = TextStyle(
      color: godocColors.godocGray600,
      fontSize: 15,
      fontWeight: FontWeight.bold
  );

  late TextStyle headline4 = TextStyle(
      color: godocColors.godocGray600,
      fontSize: 13,
      fontWeight: FontWeight.bold
  );

  late TextStyle bodyText = TextStyle(
      color: godocColors.godocGray600,
      fontSize: 16,
      fontWeight: FontWeight.normal
  );

  late TextStyle bodyText2 = TextStyle(
      color: godocColors.godocGray600,
      fontSize: 15,
      fontWeight: FontWeight.normal
  );

  late TextStyle bodyText3 = TextStyle(
      color: godocColors.godocGray600,
      fontSize: 13,
      fontWeight: FontWeight.normal
  );

  late TextStyle bodyText4 = TextStyle(
      color: godocColors.godocGray600,
      fontSize: 12,
      fontWeight: FontWeight.normal
  );

  late TextStyle bodyText5 = TextStyle(
      color: godocColors.godocGray600,
      fontSize: 21,
      fontWeight: FontWeight.normal
  );
}