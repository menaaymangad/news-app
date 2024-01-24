class NewsModel {
  final String? image;
  final String title;
  final String? description;

  const NewsModel({
    required this.image,
    required this.title,
    required this.description,
  });
  factory NewsModel.fromJson(json) {
    return NewsModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
    );
  }
}
