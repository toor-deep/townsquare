

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:townsquare/design-system/app_colors.dart';


/// //////////////////////////////////////////////////////////////
/// Styles - Contains the design system for the entire app.
/// Includes paddings, text styles, timings etc. Does not include colors, check [AppTheme] file for that.

/// Used for all animations in the  app
class Times {
  static const Duration fastest = Duration(milliseconds: 150);
  static const fast = Duration(milliseconds: 250);
  static const medium = Duration(milliseconds: 350);
  static const slow = Duration(milliseconds: 700);
  static const slower = Duration(milliseconds: 1000);
}

class Sizes {
  static double hitScale = 1;
  static double get hit => 20 * hitScale;
}

class IconSizes {
  static const double scale = 1;
  static const double med = 24;
  static const double sm = 16;
}

class Insets {
  static double scale = 1;
  static double offsetScale = 1;
  // Regular paddings
  static double get xs => 4 * scale;
  static double get sm => 8 * scale;
  static double get med => 12 * scale;
  static double get lg => 16 * scale;
  static double get xl => 32 * scale;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class Paddings {
  static final contentPadding = EdgeInsets.all(Insets.med);
  static final horizontalPadding = EdgeInsets.symmetric(horizontal: Insets.med);
  static final verticalPadding = EdgeInsets.symmetric(vertical: Insets.med);

  // Height Paddings
  static EdgeInsets get hxs => EdgeInsets.symmetric(vertical: Insets.xs);
  static EdgeInsets get hsm => EdgeInsets.symmetric(vertical: Insets.sm);
  static EdgeInsets get hmed => EdgeInsets.symmetric(vertical: Insets.med);
  static EdgeInsets get hlg => EdgeInsets.symmetric(vertical: Insets.lg);
  static EdgeInsets get hxl => EdgeInsets.symmetric(vertical: Insets.xl);
}



class AppTextStyles {
  static const TextStyle text_12 = TextStyle(
    fontSize: 12,
    color:kDarkGreyColor
  );
  static const TextStyle text_10 = TextStyle(
      fontSize: 10,
      color:kDarkGreyColor
  );

  static const TextStyle text_14 = TextStyle(
      fontSize: 14,
      color:kDarkGreyColor
  );


  static const TextStyle heading = TextStyle(
    fontSize: 20,
      fontWeight: FontWeight.w500,
    color: kBlackColor
  );

  static const TextStyle subHeading = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: kBlackColor
  );
  static const TextStyle text_14_black = TextStyle(
      fontSize: 12,
      color: kBlackColor
  );
  static const TextStyle count = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: kBlackColor
  );
  static ButtonStyle get btn => const ButtonStyle(
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      backgroundColor: WidgetStatePropertyAll(kBlackColor));

}





