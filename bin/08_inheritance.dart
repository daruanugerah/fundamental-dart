main(List<String> args) {
  Hero h = Hero();
  Monster m = Monster();
  MonsterCat c = MonsterCat();
  Monster em = MonsterCat();

  List<Monster> monsters = [];

  h.healtPoint = -5;
  m.healtPoint = 9;

  print('hero HP: ' + h.healtPoint.toString());
  print('monster HP: ' + m.healtPoint.toString());
  print(h.killMonster());
  print(m.eatHuman());
  print(c.eatHuman());
  print(c.fly());
  
  print('---------------');

  monsters.add(MonsterCat());
  monsters.add(MonsterDog());
  monsters.add(MonsterDog());

  for (Monster mm in monsters) {
    print(mm.eatHuman());
  }

  for (Monster mmm in monsters) {
    if (mmm is MonsterDog) {
      print(mmm.swim());
    }
  }

  //method fly can't automatic if you not handle with if condition, so you can handle manually with AS
  print((em as MonsterCat).fly());
}

class Character {
  int _healtPoint;

  int get healtPoint => _healtPoint;

  set healtPoint(int value) {
    if (value < 0) {
      value *= -1;
    }
    _healtPoint = value;
  }
}

class Hero extends Character {

  //method
  String killMonster() => 'Take this!';
}

class Monster extends Character {
  
  //method
  String eatHuman() => 'Grr.. Delicious.. Yummy!';
}

class MonsterCat extends Monster {
  String fly() => 'Syuuuung...';
}

class MonsterDog extends Monster {
  String swim() => 'woosh..wosh..';
}