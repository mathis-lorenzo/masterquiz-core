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

enum ConnectionType {
  login,
  signup
}

enum ItemType {
  skinColor, // TODO Delete this shit
  face,
  hair,
  eyebrows,
  eyes,
  ears,
  nose, 
  mouth,
  shirt,
  circle,
  background,
  hat,
  earring,
  necklace,
  companion,
  makeup
}

enum Gender {
  boy,
  girl
}