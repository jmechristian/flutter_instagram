import 'package:flutter/material.dart';
import 'package:flutter_instagram/enums/enums.dart';
import './widgets/widgets.dart';

class NavScreen extends StatelessWidget {
  static const String routeName = '/nav';
  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      transitionDuration: const Duration(seconds: 0),
      pageBuilder: (_, __, ___) => NavScreen(),
    );
  }

  final Map<BottomNavItem, IconData> items = const {
    BottomNavItem.feed: Icons.home,
    BottomNavItem.search: Icons.search,
    BottomNavItem.create: Icons.add,
    BottomNavItem.notifications: Icons.favorite_border,
    BottomNavItem.profile: Icons.account_circle,
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Text('Nav Screen'),
        bottomNavigationBar: BottomNavBar(
          items: items,
          selectedItem: BottomNavItem.feed,
          onTap: (index) {
            print(index);
          },
        ),
      ),
    );
  }
}
