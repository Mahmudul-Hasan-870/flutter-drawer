import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  // Function to extract initials from full name
  String getInitials(String name) {
    List<String> nameParts = name.split(" ");
    String initials = "";
    if (nameParts.length > 1) {
      initials = nameParts[0][0] + nameParts[1][0];
    } else if (nameParts.length == 1) {
      initials = nameParts[0][0];
    }
    return initials.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    String fullName = 'John Doe'; // Example full name
    String email = 'john.doe@example.com'; // Example email
    String initials = getInitials(fullName);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF615EFC),
            ),
            accountName: Text(
              fullName,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            accountEmail: Text(
              email,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                initials,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: Color(0xFF615EFC),
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(IconlyBold.home),
            title: Text(
              'Home',
              style: GoogleFonts.poppins(),
            ),
            onTap: () {
              // Handle the home action
            },
          ),
          ListTile(
            leading: const Icon(IconlyBold.search),
            title: Text(
              'Search',
              style: GoogleFonts.poppins(),
            ),
            onTap: () {
              // Handle the search action
            },
          ),
          ListTile(
            leading: const Icon(IconlyBold.profile),
            title: Text(
              'Profile',
              style: GoogleFonts.poppins(),
            ),
            onTap: () {
              // Handle the profile action
            },
          ),
          ListTile(
            leading: const Icon(IconlyBold.setting),
            title: Text(
              'Settings',
              style: GoogleFonts.poppins(),
            ),
            onTap: () {
              // Handle the settings action
            },
          ),
          ListTile(
            leading: const Icon(IconlyBold.logout),
            title: Text(
              'Logout',
              style: GoogleFonts.poppins(),
            ),
            onTap: () {
              // Handle the logout action
            },
          ),
        ],
      ),
    );
  }
}
