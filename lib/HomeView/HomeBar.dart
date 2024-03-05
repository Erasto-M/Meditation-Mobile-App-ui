import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/ActivityView/Activity_view.dart';
import 'package:meditation_app/ExploreView/explore_view.dart';
import 'package:meditation_app/HomeView/homeview.dart';
import 'package:meditation_app/ProfileView/Profile_view.dart';

class HomeBar extends StatefulWidget {
  const HomeBar({super.key});

  @override
  State<HomeBar> createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  int selectedItemIndex = 0;
  void _onItemTapped(index){
    setState(() {
      selectedItemIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:getSelectedItem(selectedItemIndex),
    //   body: [
    //    const  HomeView(),
    //  const  ActivitiesView(),
    //  const ExploreView(),
    //  const ProfileView(),
    //   ][selectedItemIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        currentIndex: selectedItemIndex,
        backgroundColor: Colors.white,
       unselectedItemColor: const Color.fromARGB(255, 144, 141, 141),
        selectedItemColor: const Color.fromARGB(255, 243, 86, 75),
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Activity", icon: Icon(Icons.local_activity)),
          BottomNavigationBarItem(label: "Explore", icon: Icon(Icons.explore)),
          BottomNavigationBarItem(
              label: "Profile", icon: Icon(Icons.person_2_outlined)),
        ],
      ),
    );
  }
  Widget? getSelectedItem(int item){
    switch(item){
      case 0: 
      return const HomeView();
      case 1: 
      return const ActivitiesView();
      case 2:
      return const ExploreView();
      case 3:
      return const ProfileView();
      
    }
  }
}
