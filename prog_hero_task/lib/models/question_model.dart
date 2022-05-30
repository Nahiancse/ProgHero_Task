class Question_Model {
  List<Questions>? questions;

  Question_Model({this.questions});

  Question_Model.fromJson(Map<String, dynamic> json) {
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions!.add(new Questions.fromJson(v));
      });
    }
  }

  
}

class Questions {
  String? question;
  Answers? answers;
  String? questionImageUrl;
  String? correctAnswer;
  int? score;

  Questions(
      {this.question,
      this.answers,
      this.questionImageUrl,
      this.correctAnswer,
      this.score});

  Questions.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answers =
        json['answers'] != null ? new Answers.fromJson(json['answers']) : null;
    questionImageUrl = json['questionImageUrl'];
    correctAnswer = json['correctAnswer'];
    score = json['score'];
  }

  
}

class Answers {
  String? a;
  String? b;
  String? c;
  String? d;

  Answers({this.a, this.b, this.c, this.d});

  Answers.fromJson(Map<String, dynamic> json) {
    a = json['A'];
    b = json['B'];
    c = json['C'];
    d = json['D'];
  }


}
