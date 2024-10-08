import 'package:flutter/material.dart';
import 'package:tab_bar/tabs/firsttab.dart';
import 'package:tab_bar/tabs/secondtab.dart';
import 'package:tab_bar/tabs/thirdtab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('T A B B A R'),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person_2_rounded,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //1st tab
                  FirstTab(),

                  //2nd tab
                  SecondTab(),

                  //3rd tab

                  ThirdTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
