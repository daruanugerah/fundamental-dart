//if this code have more than 1 SAMPLE, you can comment other SAMPLE first for run SAMPLE you want test run

main(List<String> args) {
  List<Monster> monsters = [];

  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUburKecoa());

  //SAMPLE 1
  for (Monster m in monsters) {
    print(m.move());
  }

  //SAMPLE 2 for interface
  for (Monster m in monsters) {
    if (m is FlyingMonster) {
      print((m as FlyingMonster).fly());
    }
  }
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

abstract class Monster extends Character {
  
  //method
  String eatHuman() => 'Grr.. Delicious.. Yummy!';

  //if there is an empty method that is not implemented,
  //then other classes that depend on this class will need an override
  String move();
}

class MonsterUburUbur extends Monster {
  String swim() => 'brrr...brrr';

  @override
  String move() {
   return 'swimming';
  }
}

class MonsterKecoa extends Monster implements FlyingMonster {
  @override
  String fly() => 'woosh..wosh..';

  @override
  String move() {
    return 'move slowly';
  }
}

//combination of MonsterUburUbur and MonsterKecoa
class MonsterUburKecoa extends MonsterUburUbur implements FlyingMonster {
  @override
  String fly() {
    return 'fly and soar';
  }
  
}

abstract class FlyingMonster {
  String fly(); //all monster must have skill fly, use IMPLEMENT for INTERFACE OOP
}