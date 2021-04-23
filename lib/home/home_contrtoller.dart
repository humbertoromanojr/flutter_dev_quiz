import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/awnser_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel user;
  List<QuizModel> quizzes;

  void getUser() {
    user = UserModel(
      name: "JR DEV",
      photoUrl: "https://avatars.githubusercontent.com/u/6500430?v=4",
    );
  }

  void getQuizzes() {
    quizzes = [QuizModel(
      title: "NLW 05 FLUTTER", 
      imagem: AppImages.blocks, 
      level: Level.facil,
      questions: [
        QuestionModel(
          title: "Está gostando de aprender Flutter", 
          awnsers: [
            AwnserModel(title: "Estou curtindo abeça"),
            AwnserModel(title: "Estou curtindo demais"),
            AwnserModel(title: "Estou curtindo muito", isRight: true),
            AwnserModel(title: "Estou curtindo pra caramba"),
          ],)
      ]
      )
    ];
  }
}
