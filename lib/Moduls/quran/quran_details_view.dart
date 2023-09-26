import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalami_application/Moduls/quran/quuran_view.dart';

class QuranDetialsView extends StatefulWidget {
  static const String routeName = "QuranDetailsView";

  QuranDetialsView({super.key});

  @override
  State<QuranDetialsView> createState() => _QuranDetialsViewState();
}

class _QuranDetialsViewState extends State<QuranDetialsView> {
  String contant = "";
  List<String> allVerses = [];

  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (contant.isEmpty) readFiles(args.SuraNumber);
    var mediaquery = MediaQuery.of(context).size;
    var them = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/BackGroundLight.png"),
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
            color: Color(0xfff8f8f8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.SuraName,
                    style: them.textTheme.bodyLarge,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: Colors.black,
                  )
                ],
              ),
              Divider(
                color: them.primaryColor,
                indent: 30,
                endIndent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    contant,
                    style: them.textTheme.bodySmall,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    contant = text;
    contant.split("\n");
    setState(() {
      allVerses = contant.split("\n");
    });
    print(contant);
  }
}
