import 'package:flutter/material.dart';

class ScrollableTabs extends StatelessWidget {
  final List<VoidCallback> onPressedActions;

  ScrollableTabs({
    super.key,
    required this.onPressedActions,
  });

  List<String> categories = [
    "All",
    "Sports",
    "Food",
    "Kids",
    "Creative",
    "Popular",
    "Calm"
  ];

  @override
  Widget build(BuildContext context) {
    assert(categories.length == onPressedActions.length);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                categories.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      onPressed: onPressedActions[index],
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
