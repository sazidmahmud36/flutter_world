import 'package:flutter/material.dart';

import 'Fragment/AlarmFragment.dart';
import 'Fragment/BalanceFragment.dart';
import 'Fragment/ContactFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/PersonFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/SettingsFragment.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity(), debugShowCheckedModeBanner: false);
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.white),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.search, color: Colors.white),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.settings, color: Colors.white),
                text: "Settings",
              ),
              Tab(
                icon: Icon(Icons.email, color: Colors.white),
                text: "Email",
              ),
              Tab(
                icon: Icon(Icons.contact_mail, color: Colors.white),
                text: "Contact",
              ),
              Tab(
                icon: Icon(Icons.person, color: Colors.white),
                text: "Person",
              ),
              Tab(
                icon: Icon(Icons.access_alarm, color: Colors.white),
                text: "Alarm",
              ),
              Tab(
                icon: Icon(Icons.account_balance, color: Colors.white),
                text: "Balance",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Homefragment(),
          Searchfragment(),
          Settingsfragment(),
          Emailfragment(),
          Contactfragment(),
          Personfragment(),
          Alarmfragment(),
          Balancefragment()

        ],
        ),
      ),
    );
  }
}
