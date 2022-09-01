import 'package:flutter/material.dart';
import 'package:flutter_ui_practise/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          // headline1: GoogleFonts.inter(
          //   fontSize: 20,
          //   fontWeight: FontWeight.w600,
          //   color: Colors.deepPurple.shade800,
          // ),
          headline1: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: const Color(0xff32313a),
          ),
          headline4: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xff32313a),
          ),
          headline2: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.deepPurple.shade800,
          ),
          headline3: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.deepPurple.shade500,
          ),
          headline5: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: const Color(0xff32313a),
          ),
          headline6: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: const Color(0xff32313a),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
