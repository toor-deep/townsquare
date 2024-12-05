import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/design-system/app_colors.dart';
import 'package:townsquare/design-system/styles.dart';
import 'package:townsquare/shared/categories_list.dart';

import '../../../../../shared/constants.dart';

class HomeViewListItem extends StatelessWidget {
  List<Activity> activities;
   HomeViewListItem({super.key,required this.activities});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Column(
            children: [
              const Icon(
                Icons.circle,
                size: 10,
                color: kLightYellowColor,
              ),
              SizedBox(
                height: 0.5.sh,
                child: const DottedLine(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.center,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: kDarkGreyColor,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              )
            ],
          ),
          Spacing.wsm,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                    text: "Today",
                    style: AppTextStyles.text_14_black,
                    children: [
                      TextSpan(text: "/tuesday", style: AppTextStyles.text_12)
                    ]),
              ),
              listViewItem(activities)
            ],
          )
        ],
      ),
    );
  }

  Widget listViewItem(List<Activity> activities) {
    return SizedBox(
      height: 0.5.sh,
      width: 0.85.sw,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        shrinkWrap: true,
        itemCount: activities.length,
        itemBuilder: (context, index) {
          final item = activities[index];
          return Card(
              elevation: 5,
              child: Container(
                // height: 0.4.sh,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: item.time,
                            style: AppTextStyles.text_14_black,
                            children: [
                              TextSpan(
                                  text: '  (${item.totalTime})',
                                  style: AppTextStyles.text_12)
                            ]),
                      ),
                      Spacing.hsm,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.title,
                            style:
                                AppTextStyles.subHeading.copyWith(fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Text(
                              item.price,
                              style: AppTextStyles.subHeading
                                  .copyWith(fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: kGreyColor,
                            size: 13,
                          ),
                          Text(
                            item.location,
                            style: AppTextStyles.text_12,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: kLightGreyColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.person,
                                        size: 12,
                                        color: kGreyColor,
                                      ),
                                      Text(
                                        item.sportsLeft,
                                        style: AppTextStyles.text_12,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Spacing.wsm,
                              Container(
                                decoration: BoxDecoration(
                                    color: item.matchType == 'Group'
                                        ? kLightBlueColor
                                        : kLightPurpleColor,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    item.matchType,
                                    style: AppTextStyles.text_10
                                        .copyWith(
                                            color: item.matchType == 'Group'
                                                ? kDarkBlueColor
                                                : kDarkPurpleColor)
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Spacing.wsm,
                              if (item.matchType == 'Group') ...[
                                Container(
                                  decoration: BoxDecoration(
                                      color: kLightGreenColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      'childcare',
                                      style: AppTextStyles.text_10
                                          .copyWith(color: kDarkGreenColor)
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                          SizedBox(
                            height: 0.04.sh,
                            width: 0.23.sw,
                            child: ElevatedButton(
                                style: AppTextStyles.btn,
                                onPressed: () {},
                                child: Text(
                                  item.status,
                                  style: AppTextStyles.text_14.copyWith(
                                      color: Colors.white, fontSize: 10),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
