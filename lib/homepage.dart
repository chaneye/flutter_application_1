import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            color: Colors.black,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: GNav(
                  backgroundColor: Colors.black26,
                  gap: 8,
                  onTabChange: (index){
                    print(index);
                  },
                  color: Colors.white,
                  activeColor: Colors.white,
                  tabBackgroundColor: Colors.grey,
                  padding: EdgeInsets.all(16),
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: ' Home',
                    ),
                    GButton(
                      icon: Icons.search,
                      text: ' Friends',
                    ),
                    GButton(
                      icon: Icons.send,
                      text: ' Send/Transfer',
                    ),
                    GButton(
                      icon: Icons.balance,
                      text: ' Balance',
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: ' Profile',
                    )
                  ],
                ))));
  }
}
