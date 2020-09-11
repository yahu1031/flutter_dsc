import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_dsc/Components/Responsive/sizeConfig.dart';
import 'package:google_fonts/google_fonts.dart';

/// All the constants used in multiple files of the app are stored here

class CustomColors {
  static Color mainColor = Colors.deepPurpleAccent.shade200;
  static const Color themeColor = Colors.deepPurple;
}

class Strings {
  static const String aboutUs =
      "Developer Students Club is a community where everyone is welcome. We help students bridge the gap between theory and practice and grow their knowledge by providing a peer-to-peer learning environment, by conducting workshops, study jams and building solutions for local businesses. Developer Students Clubs is a program supported by Google Developers.";

  static const String websiteError = 'Could not launch ${Assets.dscSastraUrl}';
  static const String buttonText = 'Visit Us';
  static const String footerString = 'Powered by google developers';
  static const String searching = 'We lost the data, we are searching for it.';
}

class Ints {
  static const itemsCount = 7;
}

class Assets {
  // Api string
  static const apiString = 'https://wayhike.com/dsc/demo_app_api.php';
  // Website link
  static const dscSastraUrl = 'https://dscsastra.com/';
  // Image asset path name
  static const imageAssetPath = 'images/dsclogo.png';
  // Lottie loading json
  static const loading = 'lottie/loading.json';
  static const searching = 'lottie/searching_data.json';
}

// Card textStyle, margin, and padding
final TextStyle cardTextStyle = GoogleFonts.lexendDeca(
  fontSize: 2 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.bold,
);

class CustomPadding {
  static EdgeInsets cardMargin =
      EdgeInsets.symmetric(vertical: 0.5*SizeConfig.widthMultiplier, horizontal: 15);
  static const EdgeInsets cardPadding =
      EdgeInsets.symmetric(vertical: 20, horizontal: 15);
}
