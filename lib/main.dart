import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl_standalone.dart'
    if (dart.library.html) 'package:intl/intl_browser.dart';
import 'package:medical_app/core/helper_functions/material_route.dart';
import 'package:medical_app/core/helper_functions/theme_data.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/core/responsive_size_provider/size_privder.dart';
import 'package:medical_app/features/doctors/presention/views/doctors_view.dart';
import 'package:medical_app/features/profile/presention/views/profile_view.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await findSystemLocale();
  await initializeDateFormatting();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeProvider(
      baseSize: Size(360, 800),
      width: context.screenWidth,
      height: context.screenHeight,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themes(),

        initialRoute: ProfileView.routeName,
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
