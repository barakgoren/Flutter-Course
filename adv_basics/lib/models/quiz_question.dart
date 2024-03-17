class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    var listToReturn = List.of(answers);
    listToReturn.shuffle();
    return listToReturn;
  }
}
