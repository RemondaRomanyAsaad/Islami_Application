import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalami_application/Moduls/hadeth/hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContant> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) readFiles();
    var them = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/hadeth_header.png"),
        Divider(
          thickness: 2.2,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Text(
          "الاحاديث",
          textAlign: TextAlign.center,
        ),
        Divider(
          thickness: 2.2,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadethDetials.routeName,
                    arguments: HadethContant(
                        title: allHadethContent[index].title,
                        contant: allHadethContent[index].contant));
              },
              child: Text(
                allHadethContent[index].title,
                textAlign: TextAlign.center,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              thickness: 2.2,
              indent: 80,
              endIndent: 80,
              height: 5,
            ),
            itemCount: allHadethContent.length,
          ),
        )
      ],
    );
  }

  readFiles() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = text.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String SingleHadeth = allHadeth[i].trim();
      int indexOfFirstLine = SingleHadeth.indexOf("\n");
      String title = SingleHadeth.substring(0, indexOfFirstLine);
      String contant = SingleHadeth.substring(indexOfFirstLine + 1);
      HadethContant hadethContant =
          HadethContant(title: title, contant: contant);

      setState(() {
        allHadethContent.add(hadethContant);
      });
      print(title);
    }
  }
}

class HadethContant {
  final String title;
  final String contant;

  HadethContant({required this.title, required this.contant});
}
