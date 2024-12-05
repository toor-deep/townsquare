import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/design-system/styles.dart';
import 'package:townsquare/shared/categories_list.dart';
import '../../../../../shared/constants.dart';
import 'home_view_list_item.dart';
import 'home_view_list_ui.dart';

class WebHomeView extends StatefulWidget {
  WebHomeView({super.key});

  @override
  State<WebHomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<WebHomeView> {
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
      body: SizedBox(
        width: 0.55.sw,
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Tues,Nov 12", style: AppTextStyles.text_12),
              const Text(
                "This Week in Estipona",
                style: AppTextStyles.heading,
              ),
              Spacing.hsm,
             // _buildContainer(),
              Spacing.hsm,
              _searchBar(),
              Spacing.hsm,
              WebHomeViewListUi(
                onCategorySelected: updateSelectedCategory,
              ),
              WebHomeViewListItem(
                activities: getFilteredActivities(),
              )
            ],
          ),
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
