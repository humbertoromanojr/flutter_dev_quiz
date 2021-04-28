import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double value;

  const ProgressIndicatorWidget({Key? key, required this.value}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LinearProgressIndicator(
        value: value,
        backgroundColor: AppColors.chartSecondary,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
      ),
    );
  }
}
