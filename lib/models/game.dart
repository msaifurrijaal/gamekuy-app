import 'dart:convert';

List<Game> gameFromJson(String str) =>
    List<Game>.from(json.decode(str).map((x) => Game.fromJson(x)));

class Game {
  final int? id;
  final String? title;
  final String? thumbnail;
  final String? shortDescription;
  final String? gameUrl;
  final String? genre;
  final String? platform;
  final String? publisher;
  final String? developer;
  final String? releaseDate;
  final String? freetogameProfileUrl;

  Game({
    this.id,
    this.title,
    this.thumbnail,
    this.shortDescription,
    this.gameUrl,
    this.genre,
    this.platform,
    this.publisher,
    this.developer,
    this.releaseDate,
    this.freetogameProfileUrl,
  });

  factory Game.fromJson(Map<String, dynamic> json) => Game(
        id: json['id'],
        title: json['title'],
        thumbnail: json['thumbnail'],
        shortDescription: json['shortDescription'],
        gameUrl: json['gameUrl'],
        genre: json['genre'],
        platform: json['platform'],
        publisher: json['publisher'],
        developer: json["developer"],
        releaseDate: json["releaseDate"],
        freetogameProfileUrl: json["freetogameProfileUrl"],
      );
}
