
class Contact{
  final String title;
  final String description;
  final Future<void> Function() contactAction;
  final String icon;

  Contact({
    required this.title,
    required this.description,
    required this.contactAction,
    required this.icon,
  });
}