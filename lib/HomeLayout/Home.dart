import 'package:flutter/material.dart';
import 'package:isalami_application/Moduls/hadeth/hadeth_view.dart';
import 'package:isalami_application/Moduls/quran/quuran_view.dart';
import 'package:isalami_application/Moduls/radio/radio_view.dart';
import 'package:isalami_application/Moduls/settings/setting_view.dart';
import 'package:isalami_application/Moduls/tasbeh/tsabeh_view.dart';

class Home extends StatefulWidget {
  static const String routeName = "Home";

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> Screens = [
    QuranView(),
    TsabehView(),
    HadethView(),
    RadioView(),
    SettingView()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/BackGroundLight.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("اسلامى"),
        ),
        body: Screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                label: "quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha_icon.png")),
                label: "sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadeth_icon.png")),
                label: "hadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_icon.png")),
                label: "radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "setting"),
          ],
        ),
      ),
    );
  }
}
