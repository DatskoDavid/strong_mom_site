import 'author.dart';

class Article {
  final String title;
  final String image;
  final String date;
  final Author? author;

  Article({
    required this.title,
    required this.image,
    required this.date,
    this.author,
  });
}
