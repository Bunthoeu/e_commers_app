class TrendingModel {
  final String name;
  final String location;
  final String img;
  final String proImg;
  final String dicount;
  final String ofdic;
  final String date;
  final String pric;
  TrendingModel(this.name, this.location, this.proImg, this.dicount, this.ofdic,
      this.date, this.pric, this.img);
  static List<TrendingModel> generatlist() {
    return [
      TrendingModel(
          'EDM III CLUB',
          'PHNOMPENH',
          'assets/images/image1.jpg',
          'Buy wishky 2 ',
          'get 1 Free',
          '01 August 2022',
          'USD xxx',
          'assets/images/image_game.jpg'),
      TrendingModel(
          'EDM III CLUB',
          'PHNOMPENH',
          'assets/images/image_game.jpg',
          'Buy wishky 2 ',
          'get 1 Free',
          '01 August 2022',
          'USD xxx',
          'assets/images/image 10.png'),
    ];
  }
}
