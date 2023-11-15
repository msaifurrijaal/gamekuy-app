class Article {
  String category;
  String title;
  String author;
  String imageAsset;

  Article(
      {required this.category,
      required this.title,
      required this.author,
      required this.imageAsset});
}

var articleList = [
  Article(
    category: 'RPG',
    title: 'RPG is Best Favorite Game',
    author: 'by Ralph Edwards',
    imageAsset: 'assets/images/rpg.jpg',
  ),
  Article(
    category: 'FPS',
    title: 'Inilah 15 Game FPS Terbaik 2023 yang Bisa Kamu Mainkan di PC',
    author: 'by Kevin Wijaya',
    imageAsset: 'assets/images/fps.jpg',
  ),
  Article(
    category: 'E-sport',
    title:
        'Esport Indonesia Makin Berkibar: Ini Dia Prestasi dan Potensi yang Dimiliki',
    author: 'by Yohana Aurel',
    imageAsset: 'assets/images/esport.jpg',
  ),
];
