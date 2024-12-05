import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:townsquare/shared/app_images.dart';

import '../../../../../design-system/app_colors.dart';
import '../../../../../design-system/styles.dart';
import '../../../../../shared/constants.dart';

class ProgressColumnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return Padding(
      padding: const EdgeInsets.only(top: 55, left: 20, right: 20),
      child: Column(
        children: [
          _buildContainer(),
          SizedBox(
            height: 0.02.sh,
          ),
          _buildWeekContainer(),
          SizedBox(
            height: 0.02.sh,
          ),
          _buildImageView()
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 0.2.sh,
        width: 0.23.sw,
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
                    Text(
                      "You’re close to your goal!",
                      style: AppTextStyles.heading
                          .copyWith(fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 0.02.sh),
                    const Text(
                      "Join more sport activities to collect more points",
                      style: AppTextStyles.text_14_black,
                    ),
                    SizedBox(height: 0.01.sh),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 0.03.sh,
                          width: 0.07.sw,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: AppTextStyles.btn,
                            child: Text(
                              "Join now",
                              style: AppTextStyles.text_12
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.03.sh,
                          width: 0.07.sw,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: AppTextStyles.btn,
                              child: Text(
                                "My points",
                                style: AppTextStyles.text_12
                                    .copyWith(color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              _progressIndicator()
            ],
          ),
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

  Widget _buildWeekContainer() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 0.3.sh,
        width: 0.23.sw,
        decoration: BoxDecoration(
          color: kLightYellowColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.12.sh,
              ),
              const Text(
                "Weekly workshops for kids",
                style: AppTextStyles.heading,
              ),
              Text(
                "Sign up for early access to weekly activities for your kids full of learning and fun!",
                style: AppTextStyles.text_12.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Container(
                height: 0.04.sh,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Learn',
                        style:
                            AppTextStyles.text_14.copyWith(color: Colors.black),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 15,
                          weight: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageView() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 0.3.sh,
          width: 0.23.sw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  image: AssetImage(AppImages.image), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 8, right: 10),
            child: Column(
              children: [
                Text(
                  'Popular events near you!',
                  style: AppTextStyles.heading.copyWith(color: Colors.white),
                ),
                const Spacer(),
                Text(
                  "Unleash the fun! Explore the world of exciting events happening near you.",
                  style: AppTextStyles.subHeading.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Spacing.hsm,
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 6.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(8), // Rounded rectangle
                    ),
                    child: Row(
                      children: [
                        // Circle Image with Rounded Edges
                        Container(
                          width: 32.0,
                          height: 32.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(AppImages.girl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 0.04.sw),
                        const Text(
                          "See More",
                          style: AppTextStyles.subHeading,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacing.hmed,
              ],
            ),
          )),
    );
  }
}
