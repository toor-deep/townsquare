import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:townsquare/design-system/app_colors.dart';
import 'package:townsquare/design-system/styles.dart';
import 'package:townsquare/shared/app_images.dart';
import 'package:townsquare/shared/categories_list.dart';
import 'package:townsquare/shared/widgets/app_icons.dart';

import '../../../../../shared/constants.dart';
import '../../../../../shared/widgets/scrollable_tabs.dart';
import 'home_view_list_item.dart';
import 'home_view_list_ui.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String selectedCategory = 'All';

  void updateSelectedCategory(String category) {
    setState(() {
      if(category.isNotEmpty){
      selectedCategory = category;}
      else{
        selectedCategory='All';
      }
    });
  }

  List<Activity> getFilteredActivities() {
    if (selectedCategory == "All") {
      return activities;
    }
    return activities
        .where((activity) => activity.type == selectedCategory.toLowerCase())
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRow(),
                    const Text(
                      "This Week in Estipona",
                      style: AppTextStyles.heading,
                    ),
                    Spacing.hsm,
                    _buildContainer(),
                    Spacing.hsm,
                    _searchBar(),
                    Spacing.hsm,
                    HomeViewListUi(
                      onCategorySelected: updateSelectedCategory,
                    ),
                    HomeViewListItem(
                      activities: getFilteredActivities(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Tues,Nov 12", style: AppTextStyles.text_12),
        Row(
          children: [
            const AppIcon(
              AppIcons.bell,
              size: 16,
              color: Colors.black,
            ),
            Spacing.wmed,
            const CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage(AppImages.user),
            )
          ],
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Container(
      height: 0.2.sh,
      decoration: BoxDecoration(
        color: kLightBlueColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "You’re close to your goal!",
                    style: AppTextStyles.subHeading,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    "Join more sport activities to collect more points",
                    style: AppTextStyles.text_14_black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: AppTextStyles.btn,
                          child: const Text("Join now"),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: AppTextStyles.btn,
                          child: const Text("My points"))
                    ],
                  ),
                ],
              ),
            ),
            _progressIndicator()
          ],
        ),
      ),
    );
  }

  Widget _progressIndicator() {
    return Expanded(
      flex: 1,
      child: Center(
        child: CircularPercentIndicator(
          radius: 32.0,
          lineWidth: 8.0,
          backgroundWidth: 5,
          percent: 0.7,
          center: const Text(
            "27",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          progressColor: kDarkBlueColor,
          circularStrokeCap: CircularStrokeCap.round,
          backgroundColor: Colors.white,
          animation: true,
          animationDuration: 1000,
        ),
      ),
    );
  }

  Widget _searchBar() {
    return SizedBox(
      height: 0.06.sh,
      child: Card(
        elevation: 2,
        child: TextFormField(
          style: AppTextStyles.text_14,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              //  borderSide: BorderSide.none,
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(5),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            suffixIcon: const Icon(Icons.search, color: Colors.black),
            hintText: "What do you feel like doing?",
            hintStyle: AppTextStyles.text_14,
          ),
        ),
      ),
    );
  }
}
