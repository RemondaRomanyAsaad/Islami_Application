import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalami_application/HomeLayout/Home.dart';
import 'package:isalami_application/Moduls/hadeth/hadeth_details_view.dart';
import 'package:isalami_application/Moduls/quran/quran_details_view.dart';
import 'package:isalami_application/Moduls/splash_screen/splash.dart';
import 'package:isalami_application/core/theme/application_theme.dart';
import 'package:provider/provider.dart';

import 'core/provider/app_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
        theme: ApplicationTheme.lightTheme,
        darkTheme: ApplicationTheme.darkTheme,
        themeMode: appProvider.currentTheme,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(appProvider.currentLocal),
        initialRoute: Splash.routeName,
        routes: {
          Splash.routeName: (context) => const Splash(),
          Home.routeName: (context) => Home(),
          QuranDetialsView.routeName: (context) => QuranDetialsView(),
          HadethDetials.routeName: (context) => HadethDetials(),
        });
  }

}