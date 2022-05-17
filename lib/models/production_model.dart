class ProductionModel {
  final String img;
  final String title;
  final String location;
  final String dateInfo;
  ProductionModel({
    required this.img,
    required this.title,
    required this.location,
    required this.dateInfo,
  });
}

List<ProductionModel> productionDummyList = [
  ProductionModel(
      img: "icons/image1.png",
      title: "Production Name That is Long",
      location: "Sweden",
      dateInfo: "Jan 14, 2022 - Feb 23, 2023"),
  ProductionModel(
      img: "icons/image2.png",
      title: "What has bee seen very very long te...",
      location: "Sweden",
      dateInfo: "Jan 14, 2022 - Feb 23, 2023"),
];
