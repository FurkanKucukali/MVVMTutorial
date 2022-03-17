class ImageConstants {
  static ImageConstants? _instance;

  static ImageConstants get instance => _instance ??= ImageConstants._init();

  ImageConstants._init();

  String get logo => toSvg('logoauth');
  String get person => toSvg('person');
  String get key => toSvg('key');
  String get imagegif => toGif('print');




  String toSvg(String name) => 'assets/images/$name.svg';
  String toGif(String name) => 'assets/images/$name.gif';
 }