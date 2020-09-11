import 'package:flutter/material.dart';
import 'package:flutter_dsc/Components/Responsive/sizeConfig.dart';
import 'package:flutter_dsc/Components/constants.dart';
import 'package:flutter_dsc/components/widgets/app_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// Button text and on pressed

final Function buttonOnPressed = () async {
  if (await canLaunch(Assets.dscSastraUrl)) {
    await launch(Assets.dscSastraUrl);
  } else {
    throw Strings.websiteError;
  }
};

class AboutScreen extends StatefulWidget {
  // Screen id for route
  static final screenId = 'AboutScreen';

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: AppDrawer(),
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5 *SizeConfig.heightMultiplier, horizontal: 5 *SizeConfig.widthMultiplier,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Image
                Container(
                  padding: EdgeInsets.all(0),
                  child: FittedBox(
                    child: Image.asset(
                      Assets.imageAssetPath,
                    ),
                  ),
                ),
                // Paragraph
                Container(
                  child: Text(
                    Strings.aboutUs,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexendDeca(
                      fontSize: 2.5*SizeConfig.textMultiplier, 
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                // Button
                RaisedButton(
                  splashColor: CustomColors.mainColor,
                  textColor: CustomColors.mainColor,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: buttonOnPressed,
                  child: Text(Strings.buttonText),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
