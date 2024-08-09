void main() {
  // final Hero superman = new Hero('Superman', 'Super Strength');
  // final Hero batman = new Hero('Batman', 'Rich');
  // final Hero flash = new Hero('Flash', 'Super Speed');

  final Hero superman = new Hero(name: 'Superman', power: 'Super Strength');
  final Hero batman = new Hero(name: 'Batman', power: 'Rich');
  final Hero flash = new Hero(name: 'Flash', power: 'Super Speed');

  print(superman);
  print(batman.name);
  print(flash.name);
}

// class Hero {
//   String name;
//   String power;

//   // Hero(String pName, String pPower)
//   //     : name = pName,
//   //       power = pPower;

//   Hero(this.name, this.power);
// }

class Hero {
  String name;
  String power;

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  Hero({
    required this.name,
    required this.power,
  });

  @override
  String toString() {
    return '$name - $power';
  }
}
