import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/design-system/app_colors.dart';
import 'package:townsquare/design-system/styles.dart';
import 'package:townsquare/shared/widgets/app_icons.dart';

class WebHomeViewListUi extends StatefulWidget {
  final Function(String) onCategorySelected;

  const WebHomeViewListUi({super.key, required this.onCategorySelected});


  @override
  State<WebHomeViewListUi> createState() => _HomeViewListUiState();
}

class _HomeViewListUiState extends State<WebHomeViewListUi> {
  List<String> categories = [
    "All",
    "Sports",
    "Food",
    "Kids",
    "Creative",
    "Popular",
    "Calm"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 0.55.sw,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: kLightPurpleColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const AppIcon(AppIcons.sliders)),
            ),
            ...categories.map((category) {
              int index = categories.indexOf(category);
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    widget.onCategorySelected(category);
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: selectedIndex == index
                        ? kDarkPurpleColor
                        : kLightPurpleColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: index == -1
                      ? const AppIcon(AppIcons.sliders)
                      : Text(category, style: AppTextStyles.text_14_black),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
