import 'package:flutter/material.dart';
import 'package:isalami_application/Moduls/settings/widget/SelectedOptionWidget.dart';
import 'package:isalami_application/Moduls/settings/widget/UnSelectedOptionWidget.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/app_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    var them = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: them.primaryColor.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                appProvider.ChangeLanguage("en");
                Navigator.pop(context);
              },
              child: appProvider.currentLocal == "en"
                  ? SelectedOptionWidget(SelectedItem: "English")
                  : UnSelectedOptionWidget(UnSelectedItem: "English")),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
              onTap: () {
                appProvider.ChangeLanguage("ar");
                Navigator.pop(context);
              },
              child: appProvider.currentLocal == "en"
                  ? SelectedOptionWidget(SelectedItem: "عربي")
                  : UnSelectedOptionWidget(UnSelectedItem: "عربي")),
        ],
      ),
    );
  }
}
