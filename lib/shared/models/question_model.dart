import 'package:flutter/material.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awnsers;

  QuestionModel({ 
    @required this.title, 
    @required this.awnsers 
  }) : assert(
    awnsers.length == 4,
  );
}
