class Data {
  late final String title;
  late final String description;
  late final String imagePath;
  final String logoPath;
  Data({
    required this.title,
    required this.description,
    required this.imagePath,
    this.logoPath = "assets/images/sevenkrave_logo.png",
  });
}
