import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalami_application/Moduls/settings/widget/SelectedOptionWidget.dart';
import 'package:isalami_application/Moduls/settings/widget/UnSelectedOptionWidget.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/app_provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;

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
                appProvider.ChangeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: appProvider.isDark()
                  ? SelectedOptionWidget(SelectedItem: local.dark)
                  : UnSelectedOptionWidget(UnSelectedItem: local.dark)),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
              onTap: () {
                appProvider.ChangeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: appProvider.isDark()
                  ? UnSelectedOptionWidget(UnSelectedItem: local.light)
                  : SelectedOptionWidget(SelectedItem: local.light))
        ],
      ),
    );
  }
}
