import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  const LevelButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.levelButtonFacil,
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.levelButtonBorderFacil)
        ),
        borderRadius: BorderRadius.circular(28)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 6.0),
        child: Text("Fácil", style: GoogleFonts.notoSans(
          color: AppColors.levelButtonTextFacil,
          fontSize: 16,
        )),
      ),
    );
  }
}