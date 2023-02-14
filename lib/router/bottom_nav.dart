import 'package:flutter/material.dart';
import 'package:my_jpj_sample/features/emptyScreen/empty_screen.dart';
import 'package:my_jpj_sample/features/home/home_screen.dart';
import 'package:my_jpj_sample/features/secondScreen/second_screen.dart';

class BottomNavigationRoute extends StatefulWidget {
  const BottomNavigationRoute({super.key});

  @override
  State<BottomNavigationRoute> createState() => _BottomNavigationRouteState();
}

class _BottomNavigationRouteState extends State<BottomNavigationRoute> {
  final List<Widget> _screens = const [
    EmptyScreen(),
    EmptyScreen(),
    EmptyScreen(),
    HomeScreen(),
  ];

  int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _screens,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.red[100],
        destinations: const <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.email_outlined), label: 'Inbox'),
          NavigationDestination(icon: Icon(Icons.pin_drop_outlined), label: 'Directory'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
