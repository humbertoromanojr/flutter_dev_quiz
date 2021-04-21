import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  String labelLevel;

  LevelButtonWidget({
    Key key,
    @required this.labelLevel,
  })  : assert(["Easy", "Average", "Difficult", "Expert"].contains(labelLevel)),
        super(key: key);

  final config = {
    "Easy": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil,
    },
    "Average": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio,
    },
    "Difficult": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil,
    },
    "Expert": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    },
  };

  Color get color => config[labelLevel]['color'];
  Color get borderColor => config[labelLevel]['borderColor'];
  Color get fontColor => config[labelLevel]['fontColor'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          border: Border.fromBorderSide(
              BorderSide(color: borderColor)),
          borderRadius: BorderRadius.circular(28)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Text(labelLevel,
            style: GoogleFonts.notoSans(
              color: fontColor,
              fontSize: 14,
            )),
      ),
    );
  }
}
