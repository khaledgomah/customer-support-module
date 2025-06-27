enum FAQCategory { general, account, services }


class FAQ {
  final String question;
  final String answer;
  final FAQCategory category;

  FAQ({
    required this.question,
    required this.answer,
    required this.category,
  });
}