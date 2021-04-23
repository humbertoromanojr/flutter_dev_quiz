import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/awnser_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  // state management
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel user;
  List<QuizModel> quizzes;

  void getUser() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "JR DEV",
      photoUrl: "https://avatars.githubusercontent.com/u/6500430?v=4",
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        title: "NLW 05 FLUTTER",
        imagem: AppImages.blocks,
        level: Level.facil,
        questions: [
          QuestionModel(title: "Está gostando de aprender Flutter", awnsers: [
            AwnserModel(title: "Estou curtindo abeça"),
            AwnserModel(title: "Estou curtindo demais"),
            AwnserModel(title: "Estou curtindo muito", isRight: true),
            AwnserModel(title: "Estou curtindo pra caramba"),
          ]),
          QuestionModel(
              title: "O que gostou mais de aprender Flutter",
              awnsers: [
                AwnserModel(title: "Acaffold"),
                AwnserModel(title: "Contrtuir a UI", isRight: true),
                AwnserModel(title: "Gerenciar estado"),
                AwnserModel(title: "Animações básicas"),
              ]),
        ],
      )
    ];

    state = HomeState.success;
  }
}
