class ImageData {

  late String author;
  late String url;


  ImageData({ required this.author, required this.url});

  factory ImageData.fromJson(Map<String, dynamic> json) {
    return ImageData(

        author: json['author'] as String,
        url: json['download_url'] as String,
    );
  }
}