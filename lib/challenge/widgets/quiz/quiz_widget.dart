import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class quizWidget extends StatelessWidget {
  Final String title;

  const quizWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title, style: AppTextStyles.heading),
          SizedBox(height: 24)
        ],
      ),
    );
  }
}