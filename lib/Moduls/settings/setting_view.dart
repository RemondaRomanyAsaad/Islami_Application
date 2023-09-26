import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalami_application/Moduls/settings/widget/language_bottom_sheet_widget.dart';
import 'package:isalami_application/Moduls/settings/widget/settingitem.dart';
import 'package:isalami_application/Moduls/settings/widget/theme_bottom_sheet_widget.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    var them = Theme.of(context);
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingItem(
            SettingOptionTitle: local.language,
            OnOptionTap: () {
              ShowLanguageBottomSheet(context);
            },
            SelectedOption:
                appProvider.currentLocal == "en" ? "English" : "عربي",
          ),
          const SizedBox(
            height: 40,
          ),
          SettingItem(
            SettingOptionTitle: local.them_mode,
            OnOptionTap: () {
              ShowThemeBottomSheet(context);
            },
            SelectedOption: appProvider.isDark() ? local.dark : local.light,
          ),
        ],
      ),
    );
  }

  void ShowLanguageBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }

  void ShowThemeBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }
}
