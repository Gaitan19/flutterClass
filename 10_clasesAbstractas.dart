void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant.energyLeft);
}

enum PlanType {
  solar,
  wind,
  hydro,
  nuclear,
}

abstract class EnergyPlant {
  double energyLeft;
  PlanType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlanType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
