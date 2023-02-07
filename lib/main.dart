import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panel_admin/controllers/MenuController.dart';
import 'package:panel_admin/screen/main/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Admin Panel',
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                ),
          ),
        ),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => MenuController(),
            ),
          ],
          child: MainScreen(
            press: () {},
            svgSrc: '',
            title: '',
          ),
        ));
  }
}

//  canvasColor: secondaryColor