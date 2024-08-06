void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant.energyLeft);

  final nuclearPlant = NuclearPlant(energyLeft: 100);

  print(nuclearPlant.energyLeft);
  nuclearPlant.consumeEnergy(10);
  print(nuclearPlant.energyLeft);
}

enum PlanType {
  solar,
  wind,
  hydro,
  nuclear,
}

abstract class EnergyPlant {
  double energyLeft;
  final PlanType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// Extends
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlanType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// Implement

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlanType type = PlanType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
