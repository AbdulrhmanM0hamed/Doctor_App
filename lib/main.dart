import 'package:doctor_app/generated/l10n.dart';
import 'package:doctor_app/pages/doctor_page.dart';
import 'package:doctor_app/pages/doctor_profile_page.dart';
import 'package:doctor_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'pages/home.dart';
import 'generated/l10n.dart';
import 'package:intl/intl.dart';

//import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: Home(),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
