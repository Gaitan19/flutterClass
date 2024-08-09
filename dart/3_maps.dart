void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['Transform', 'Imposter'],
    'sprites': {
      1: "ditto/front.png",
      2: "ditto/back.png",
    }
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('HP: ${pokemon['hp']}');
  print('Is Alive: ${pokemon['isAlive']}');
  print('Abilities: ${pokemon['abilities']}');
  print('Sprites: ${pokemon['sprites']}');
  print('Front Sprite: ${pokemon['sprites'][1]}');
  print('Back Sprite: ${pokemon['sprites'][2]}');
  print('Abilities: ${pokemon['abilities'][0]}');
}
