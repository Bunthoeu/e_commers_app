class BannerModel {
  final String image;

  BannerModel(this.image);
  static List<BannerModel> generateBannermodel() {
    return [
      BannerModel('assets/images/banner_panda.jpg'),
      BannerModel('assets/images/banner1.png'),
      BannerModel('assets/images/banner2.png'),
    ];
  }
}
