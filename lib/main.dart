import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:townsquare/features/home_page/presentation/screens/mobile_view/home_view.dart';
import 'package:townsquare/features/home_page/presentation/screens/web_view/web_home_view.dart';
import 'package:townsquare/shared/constants.dart';
import 'package:townsquare/shared/state/app-theme/app_theme_cubit.dart';

import 'core/routing.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => StyledToast(
        locale: const Locale('en', 'US'),
        textStyle: const TextStyle(fontSize: 16.0, color: Colors.white),
        backgroundColor: const Color(0x99000000),
        borderRadius: BorderRadius.circular(5.0),
        textPadding:
        const EdgeInsets.symmetric(horizontal: 17.0, vertical: 10.0),
        toastPositions: StyledToastPosition.top,
        toastAnimation: StyledToastAnimation.slideFromTopFade,
        reverseAnimation: StyledToastAnimation.slideToTopFade,
        curve: Curves.easeIn,
        reverseCurve: Curves.easeOut,
        duration: const Duration(seconds: 3),
        animDuration: const Duration(milliseconds: 200),
        dismissOtherOnShow: true,
        fullWidth: false,
        isHideKeyboard: true,
        isIgnoring: true,
        child: BlocProvider(
          create: (context) => ThemeCubit(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                  navigatorKey: appNavigationKey,
                  title: kAppName,
                  debugShowCheckedModeBanner: false,
                  themeMode: ThemeMode.light,
                  debugShowMaterialGrid: false,
                  theme: AppTheme.data(state.isDarkMode),
                  builder: (context, child) => Stack(
                    children: [
                      child ?? const SizedBox(),
                    ],
                  ),
                  onGenerateRoute: generateRoute,
                  home: kIsWeb ? const LeftSlider() :  HomeView(),);
            },
          ),
        ),
      ),
    );
  }
}

