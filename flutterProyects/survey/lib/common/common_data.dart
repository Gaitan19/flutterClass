class TabData {
  final String imagePath;
  final String label;
  final int index;
  final double imageWidth;
  final double imageHeight;

  TabData({
    required this.imagePath,
    required this.label,
    required this.index,
    required this.imageWidth,
    required this.imageHeight,
  });
}

final List<TabData> tabItems = [
  TabData(
    imagePath: "assets/img/home.png",
    label: "HOME",
    index: 0,
    imageWidth: 30,
    imageHeight: 25,
  ),
  TabData(
    imagePath: "assets/img/device.png",
    label: "DEVICE",
    index: 1,
    imageWidth: 26,
    imageHeight: 37,
  ),
  TabData(
    imagePath: "assets/img/help.png",
    label: "HELP",
    index: 2,
    imageWidth: 32,
    imageHeight: 32,
  ),
];
