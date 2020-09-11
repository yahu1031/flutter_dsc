import 'package:flutter/material.dart';
import 'package:flutter_dsc/Components/Responsive/sizeConfig.dart';
import 'package:google_fonts/google_fonts.dart';

final footerTextStyle = GoogleFonts.lexendDeca(
  fontSize: 1.5 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);
final googleTextStyle = TextStyle(
  fontFamily: 'Google Sans',
  letterSpacing: 1.5,
  fontWeight: FontWeight.bold,
  fontSize: 1.5 * SizeConfig.textMultiplier,
);

class GoogleText extends StatefulWidget {
  @override
  _GoogleTextState createState() => _GoogleTextState();
}

class _GoogleTextState extends State<GoogleText> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Powered by ',
            style: footerTextStyle,
          ),
          TextSpan(
            text: 'G',
            style: googleTextStyle.copyWith(
              color: Color(0xFF4285F4),),
          ),
          TextSpan(
            text: 'o',
            style: googleTextStyle.copyWith(
              color: Color(0xFFEA4335),),
          ),
          TextSpan(
            text: 'o',
            style: googleTextStyle.copyWith(
              color: Color(0xFFFBBC05),),
          ),
          TextSpan(
            text: 'g',
            style: googleTextStyle.copyWith(color:Color(0xFF4285F4),),
          ),
          TextSpan(
            text: 'l',
            style: googleTextStyle.copyWith(color: Color(0xFF34A853),),
          ),
          TextSpan(
            text: 'e',
            style: googleTextStyle.copyWith(
              color: Color(0xFFEA4335),),
          ),
          TextSpan(
            text: ' developers.',
            style: footerTextStyle,
          ),
        ],
      ),
    );
  }
}
