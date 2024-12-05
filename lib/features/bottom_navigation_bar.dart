import 'package:flutter/material.dart';
import 'package:townsquare/design-system/app_colors.dart';
import 'package:townsquare/features/home_page/presentation/screens/mobile_view/home_view.dart';
import 'package:townsquare/shared/widgets/app_icons.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    Future<bool> onWillPop() async {
      if (selectIndex != 0) {
        setState(() {
          selectIndex = 0; // Navigate back to HomeScreen
        });
        return false; // Prevent popping the screen
      } else {
        return await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Exit Confirmation'),
                content: const Text('Are you sure you want to exit the app?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('Exit'),
                  ),
                ],
              ),
            ) ??
            false;
      }
    }

    final List<Widget> children = [

       const SearchView(),
      const ProfileView(),
      HomeView(),
      const SettingsView(),
    const NotificationsView()
    ];

    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          onWillPop();
        },
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: NavigationBar(
            backgroundColor: Colors.white,
            indicatorColor: Colors.white,
            shadowColor: kDarkGreyColor,
            elevation: 5,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            selectedIndex: selectIndex,
            onDestinationSelected: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon:  AppIcon(AppIcons.calendar,size: 25,),
                label: 'Home',
              ),
              NavigationDestination(
                icon: AppIcon(AppIcons.map,size: 25,),
                label: 'Activities',
              ),
              NavigationDestination(
                icon: AppIcon(AppIcons.plus,size: 25,),
                label: 'More',
              ),
              NavigationDestination(
                icon: AppIcon(AppIcons.users,size: 25,),
                label: 'Users',
              ),
              NavigationDestination(
                icon: AppIcon(AppIcons.star,size: 25,),
                label: 'Rating',
              ),
            ],
          ),
          body: children.elementAt(selectIndex),
        ),
      ),
    );
  }
}

// Settings View
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings View')),
    );
  }
}

// Profile View
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('Profile View')),
    );
  }
}

// Search View
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Map')),
      body: const Center(child: Text('Map View')),
    );
  }
}

// Notifications View
class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Notifications')),
      body: const Center(child: Text('Notifications View')),
    );
  }
}
