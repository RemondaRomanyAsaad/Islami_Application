import 'package:flutter/material.dart';
import 'package:isalami_application/Moduls/quran/quran_details_view.dart';
import 'package:isalami_application/Moduls/quran/quran_item.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> SuraName = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];
    var them = Theme.of(context);

    return Column(children: [
      Image.asset("assets/images/quran_header.png"),
      Divider(
        thickness: 2.2,
        indent: 10,
        endIndent: 10,
        height: 5,
      ),
      Row(
        children: [
          Expanded(
            child: Text("رقم السوره",
                textAlign: TextAlign.center, style: them.textTheme.bodyLarge),
          ),
          Container(
            width: 1.2,
            height: 45,
            color: them.colorScheme.onPrimary,
          ),
          Expanded(
              child: Text("اسم السوره",
                  textAlign: TextAlign.center,
                  style: them.textTheme.bodyLarge)),
        ],
      ),
      Divider(
        thickness: 2.2,
        indent: 10,
        endIndent: 10,
        height: 5,
      ),
      Expanded(
          child: SizedBox(
        height: 250,
        child: ListView.builder(
          itemCount: SuraName.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, QuranDetialsView.routeName,
                  arguments: SuraDetails(
                      SuraName: SuraName[index], SuraNumber: "${index + 1}"));
            },
            child: QuranItem(
              SuraName: SuraName[index],
              SuraNumber: "${index + 1}",
            ),
          ),
        ),
      ))
    ]);
  }
}

class SuraDetails {
  final String SuraName;
  final String SuraNumber;

  SuraDetails({required this.SuraName, required this.SuraNumber});
}
