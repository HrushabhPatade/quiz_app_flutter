

class Question {
  final String questionText;
  final List<String> options;
  final int correctIndex; 

  Question({
    required this.questionText,
    required this.options,
    required this.correctIndex,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    final selectedOptions = json['selectedOptions'][0];

    final options = [
      selectedOptions['option1'] as String,
      selectedOptions['option2'] as String,
      selectedOptions['option3'] as String,
      selectedOptions['option4'] as String,
    ];

    // Convert "Option 1" -> 0, "Option 2" -> 1, etc.
    final String answerStr = selectedOptions['answer']; // "Option 1"
    final int correctIndex =
        int.parse(answerStr.replaceAll("Option ", "")) - 1;

    return Question(
      questionText: json['questionText'],
      options: options,
      correctIndex: correctIndex,
    );
  }
}
