class Artical {
  String? title;
  String? description;
  String? urlToImage;

  Artical({
    this.title,
    this.description,
    this.urlToImage,
  });

  factory Artical.fromJson(Map<String,dynamic>json){
    return Artical(title:json['title'],
        description : json['description'],
        urlToImage : json['urlToImage'],);

  }
}
