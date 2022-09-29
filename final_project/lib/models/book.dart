class Book {
  String title;
  String description;
  String imgUrl;
  String? genre;

  Book(
      {required this.title,
      required this.description,
      required this.imgUrl,
      this.genre});
}
