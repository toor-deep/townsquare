import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/design-system/styles.dart';
import 'package:townsquare/features/home_page/presentation/screens/web_view/web_home_view_progress_column_view.dart';
import 'package:townsquare/features/home_page/presentation/screens/web_view/web_home_view_ui.dart';
import 'package:townsquare/shared/app_images.dart';
import 'package:townsquare/shared/widgets/app_icons.dart';
import '../../../../../design-system/app_colors.dart';
import '../../../../../shared/constants.dart';

class LeftSlider extends StatelessWidget {
  const LeftSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 272,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 0.04.sh),
                const AppIcon(
                  AppIcons.TWNSQR,
                  size: 156,
                ),
                SizedBox(height: 0.01.sh),

                // Menu Items
                const MenuItem(icon: AppIcons.calendar, label: "Activities"),
                const MenuItem(icon: AppIcons.map, label: "Locations"),
                const MenuItem(icon: AppIcons.star, label: "Services"),
                const MenuItem(icon: AppIcons.users, label: "Communities"),
                const MenuItem(icon: AppIcons.bell, label: "Notifications"),
                SizedBox(
                  height: 0.04.sh,
                ),

                // Create Button
                SizedBox(
                  width: 180,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kWebBlueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        Spacing.wmed,
                        Text(
                          "Create",
                          style: AppTextStyles.subHeading,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 0.02.sh),

                // Profile Section
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          AppImages.user,
                        ),
                        radius: 15,
                      ),
                      Spacing.wsm,
                      Text("Profile",
                          style: AppTextStyles.heading
                              .copyWith(color: Colors.white)),
                      SizedBox(
                        width: 0.04.sw,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Main Content Placeholder
          Expanded(
            child: SizedBox(
              width: 0.4.sw,
              child: WebHomeView(),
            )
          ),
          ProgressColumnView()

        ],
      ),
    );
  }


}


class MenuItem extends StatelessWidget {
  final AppIcons icon;
  final String label;

  const MenuItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Row(
        children: [
          const SizedBox(width: 20),
          AppIcon(
            icon,
            size: 17,
            color: Colors.white,
          ),
          const SizedBox(width: 30),
          Text(
            label,
            style: AppTextStyles.heading.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
