import 'package:quiz_app/models/question_model.dart';

List<QuestionModel> quizQuestions=[
  QuestionModel(question: "Flutter কোন ভাষায় লেখা হয়?", options: ["Java", "Kotlin", "Dart", "Swift"], correctIndex: 2),
  QuestionModel(question: "Flutter কে তৈরি করেছে?", options: ["Meta", "Google", "Apple", "Microsoft"], correctIndex: 1),
  QuestionModel(question: "Flutter-এ UI বানানো হয় কী দিয়ে?", options: ["Components", "Views", "Widgets", "Elements"], correctIndex: 2),
  QuestionModel(question: "StatefulWidget-এ UI update করতে কোনটি ব্যবহার করি?", options: ["build()", "update()", "setState()", "refresh()"], correctIndex: 2),
  QuestionModel(question: "Flutter-এর hot reload shortcut কোনটি?", options:  ["Ctrl+R", "r (terminal-এ)", "F5", "Ctrl+H"], correctIndex: 1),
];