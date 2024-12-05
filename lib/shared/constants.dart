import 'package:flutter/material.dart';

import '../design-system/styles.dart';

final appNavigationKey = GlobalKey<NavigatorState>();
final siteNavigationKey = GlobalKey<NavigatorState>();
const kAppName = 'TownSquare';

// Spacings
class Spacing {
  static SizedBox get hlg => SizedBox(height: Insets.lg);

  static SizedBox get hxs => SizedBox(height: Insets.xs);

  static SizedBox get hsm => SizedBox(height: Insets.sm);

  static SizedBox get hmed => SizedBox(height: Insets.med);

  static SizedBox get bottomViewInset =>
      const SizedBox(height: kToolbarHeight - 20);

  static SizedBox get wxs => SizedBox(width: Insets.xs);

  static SizedBox get wsm => SizedBox(width: Insets.sm);

  static SizedBox get wmed => SizedBox(width: Insets.med);

  static SizedBox get wlg => SizedBox(width: Insets.lg);

  static smallHeight() {
    return const SizedBox(height: 12);
  }

  static mediumHeight() {
    return const SizedBox(height: 18);
  }

  static largeHeight() {
    return const SizedBox(height: 24);
  }
}

// Padding
class AppPadding {
  static contentPadding() {
    return const EdgeInsets.all(12.0);
  }

  static EdgeInsets horizontalPadding() {
    return const EdgeInsets.symmetric(horizontal: 24.0);
  }
}
