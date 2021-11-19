import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: 'Matheus Schneider',
      photoUrl: 'https://avatars.githubusercontent.com/u/26752887?v=4',
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        title: 'Flutter Development',
        image: AppImages.blocks,
        questionsAnswered: 1,
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

    state = HomeState.success;
  }
}
