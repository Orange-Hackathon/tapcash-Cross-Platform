//we need to make a buttom navigation bar to navigate between the pages
//we have 4 main pages and a middle notched button to add a new transaction
//home, insights, cards, Settings

import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/models/dashboard/dashboard_home_model.dart';
import 'package:orange_hackathon_flutter/views/screens/dashboard/user_profile.dart';

// import '../../widgets/dashboard_insights.dart';
import 'dashboard_home.dart';
import 'dashboard_insights.dart';
// import 'package:orange_hackathon_flutter/views/screens/dashboard/dashboard_home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  static const routename = '/dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    DashboardHome(),
    DashboardInsights(),
    Text('Scan transaction'),
    Text('Cards Page'),
    UserProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (index != 2) {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedIndex == 0 ? homeIconSelected : homeIconUnselected,
              label: 'Home'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? insightsIconSelected
                  : insightsIconUnselected,
              label: 'Insights'),
          const BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3 ? cardIconSelected : cardIconUnselected,
              label: 'Cards'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 4 ? userIconSelected : userIconUnselected,
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF333E96),
        unselectedItemColor: const Color(0xFF1A1A1A),
        onTap: _onItemTapped,
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          () {};
        },
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: qrGradient,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: qrIcon),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
