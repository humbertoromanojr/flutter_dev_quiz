import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: 
      Size.fromHeight(250), 
      child: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear
        ),
      )
  );
}
