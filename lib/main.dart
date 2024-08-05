import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_task/app/app.bottomsheets.dart';
import 'package:the_task/app/app.dialogs.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
      theme: _buildTheme(context, Brightness.light),
      darkTheme: _buildTheme(context, Brightness.dark),
    );
  }

  ThemeData _buildTheme(BuildContext context, Brightness brightness) {
    final textTheme = Theme.of(context).textTheme;

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: const Color(0xFF0FA3B1),
      ),
      textTheme: GoogleFonts.nunitoTextTheme(textTheme).copyWith(
        titleLarge: GoogleFonts.montserrat(textStyle: textTheme.titleLarge),
      ),
    );
  }
}
