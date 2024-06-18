import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:my_app/widget/main_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(IconlyBold.category),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text(
          "ToolBar",
          style: GoogleFonts.poppins(), // Use Poppins font for the AppBar title
        ),
      ),
      drawer: const MainWrapper(),
      body: Center(
        child: Text(
          'Home Page',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
