import 'package:flutter/material.dart';

class TsabehView extends StatelessWidget {
  const TsabehView({super.key});

  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: size.width,
          height: 600,
          // color: them.primaryColor,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //       mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Expanded(
                  flex: 1,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/head of seb7a.png",
                        ),
                        Image.asset(
                          "assets/images/body of seb7a.png",
                        ),
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "عدد التسبيحات",
                    style: them.textTheme.bodyLarge,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/images/sebha_body.png")),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
