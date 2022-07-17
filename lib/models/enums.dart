enum QuestionType {
  multiple,
  trueFalse
}

enum ColorsType {
  gradientTop(1),
  gradientBottom(2),
  buttonColor(3);

  const ColorsType(this.value);
  final int value;
}

enum SignupType {
  email,
  google
}

enum ConnectionType {
  login,
  signup
}