class PromotModel {
  final String proImg;
  final String name;
  final String title;
  final String ima;
  final String dicount;
  final String ofdic;
  PromotModel(
      this.name, this.title, this.ima, this.dicount, this.ofdic, this.proImg);
  static List<PromotModel> generatlist() {
    return [
      PromotModel(
          'ESPRESSO',
          'A short, strong drink',
          'assets/images/image1.jpg',
          'buy',
          '1+1',
          'assets/images/image_pro1.jpg'),
      PromotModel(
          'ESPRESSO \n CON PANNA',
          'Cold Caffè mocha',
          'assets/images/image2.jpg',
          '20%',
          'Off',
          'assets/images/image_pro2.jpg'),
      PromotModel('FREAKSHAKE', 'Anstagrammable', 'assets/images/image13.jpg',
          '30%', 'off', 'assets/images/image_pro3.jpg'),
      PromotModel('FREAKSHAKE', 'Anstagrammable', 'assets/images/image12.jpg',
          '30%', 'off', 'assets/images/image_pro4.jpg')
    ];
  }
}
