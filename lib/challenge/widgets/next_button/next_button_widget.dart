import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  const NextButtonWidget(
      {Key key,
      @required this.label,
      @required this.backgroundColor,
      @required this.fontColor,
      @required this.borderColor,
      @required this.onTap})
      : super(key: key);

  // named constructor
  NextButtonWidget.green({@required String label, @required VoidCallback onTap})
      : this.label = label,
        this.onTap = onTap,
        this.backgroundColor = AppColors.darkGreen,
        this.borderColor = AppColors.darkGreen,
        this.fontColor = AppColors.white;

  NextButtonWidget.white({@required String label, @required VoidCallback onTap})
      : this.label = label,
        this.onTap = onTap,
        this.backgroundColor = AppColors.white,
        this.borderColor = AppColors.grey,
        this.fontColor = AppColors.border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          side: MaterialStateProperty.all(BorderSide(color: borderColor)),
        ),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
