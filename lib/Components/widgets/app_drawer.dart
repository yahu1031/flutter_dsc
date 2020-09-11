import 'package:flutter/material.dart';
import 'package:flutter_dsc/Components/widgets/google_text.dart';
import 'package:flutter_dsc/screens/about_screen.dart';
import 'package:flutter_dsc/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_dsc/Components/constants.dart';

/// Drawer to be used across the entire application, it holds a drawer header,
/// a list of items, and at the very bottom a container with a text

// Drawer title, color, and text style
final drawerTitle = 'Demo app DSC';
final drawerTitleStyle = GoogleFonts.lexendDeca(
  color: Colors.white,
  fontSize: 24,
);
final drawerStringStyle = drawerTitleStyle.copyWith(color: Colors.black);

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // Header
                DrawerHeader(
                  decoration: BoxDecoration(color: CustomColors.mainColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        drawerTitle,
                        style: drawerTitleStyle,
                      ),
                    ],
                  ),
                ),
                // List of Children Buttons
                ListTile(
                  selected:
                      ModalRoute.of(context).settings.name == 'HomeScreen',
                  leading: Icon(Icons.home),
                  title: Text('Home',style: drawerStringStyle,),
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, HomeScreen.screenId,),
                ),
                ListTile(
                  selected:
                      ModalRoute.of(context).settings.name == 'AboutScreen',
                  leading: Icon(Icons.info_outline),
                  title: Text('About',style: drawerStringStyle,),
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, AboutScreen.screenId,),
                ),
              ],
            ),
          ),
          Container(
            color: CustomColors.mainColor,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: GoogleText(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
