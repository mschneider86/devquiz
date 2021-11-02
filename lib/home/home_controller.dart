import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: 'Matheus Schneider',
      photoUrl: 'https://avatars.githubusercontent.com/u/26752887?v=4',
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: 'Flutter Development',
        image: AppImages.blocks,
        level: Level.easy,
        questions: [
          QuestionModel(
            title: 'Enjoying Flutter?',
            answers: [
              AnswerModel(
                title: 'Yes, a little',
              ),
              AnswerModel(
                title: 'Yes, a lot',
              ),
              AnswerModel(
                title: 'Obviously',
                isRight: true,
              ),
              AnswerModel(
                title: 'Not at all',
              ),
            ],
          ),
        ],
      ),
    ];
  }
}
