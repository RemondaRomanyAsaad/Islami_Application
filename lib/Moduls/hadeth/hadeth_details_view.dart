import 'package:flutter/material.dart';
import 'package:isalami_application/Moduls/hadeth/hadeth_view.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class HadethDetials extends StatefulWidget {
  static const String routeName = "Hadeth_Details";

  HadethDetials({super.key});

  @override
  State<HadethDetials> createState() => _HadethDetials();
}

class _HadethDetials extends State<HadethDetials> {
  String contant = "";
  List<String> allVerses = [];

  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContant;
    var appProvider = Provider.of<AppProvider>(context);

    var mediaquery = MediaQuery.of(context).size;
    var them = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(appProvider.isDark()
                ? "assets/images/BackGroundDark.png"
                : "assets/images/BackGroundLight.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 20),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          width: mediaquery.width,
          height: mediaquery.height,
          decoration: BoxDecoration(
            color: them.colorScheme.onBackground.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: them.textTheme.bodyLarge!
                    .copyWith(color: them.colorScheme.onSecondary),
              ),
              Divider(
                indent: 30,
                endIndent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView(children: [
                  Text(
                    args.contant,
                    style: them.textTheme.bodySmall!
                        .copyWith(color: them.colorScheme.onSecondary),
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
              // Expanded(
              //   child: ListView.builder(
              //     itemBuilder: (context, index) => Text(
              //       contant,
              //       style: them.textTheme.bodySmall,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
