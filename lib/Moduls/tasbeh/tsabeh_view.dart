import 'package:flutter/material.dart';

class TsabehView extends StatefulWidget {
  TsabehView({super.key});

  @override
  State<TsabehView> createState() => _TsabehViewState();
}

class _TsabehViewState extends State<TsabehView> {
  int counter = 0;

  double angle = 0.0;
  List<String> text = [" الحمد لله", "سبحان الله ", " الله اكبر"];
  int curentInd = 0;

  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/head of seb7a.png",
                  ),
                  Transform.rotate(
                    angle: angle,
                    child: Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: InkWell(
                        onTap: () {
                          angle += 2;
                          OnClicked();
                        },
                        child: Image.asset(
                          "assets/images/body of seb7a.png",
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "عدد التسبيحات",
              style: them.textTheme.bodyLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            width: 60,
            height: 80,
            decoration: BoxDecoration(
                color: them.colorScheme.shadow,
                borderRadius: BorderRadius.circular(12)),
            child: Text(
              "$counter ",
              style: them.textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            width: 160,
            height: 40,
            decoration: BoxDecoration(
                color: them.colorScheme.shadow,
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              text[curentInd],
              style: them.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  void OnClicked() {
    angle += 3;
    if (counter == 30) {
      counter = 0;
      curentInd++;
      if (curentInd > 2) {
        curentInd = 0;
      }
    }
    counter++;
    setState(() {});
  }
}
