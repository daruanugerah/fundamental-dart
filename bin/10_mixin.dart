//if this code have more than 1 SAMPLE, you can comment other SAMPLE first for run SAMPLE you want test run

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

// you can use mixin class using WITH before implement
// mixin class can use method without override or not use write method from mixin class
abstract class Monster extends Character with DrinkAbilityMixin {
  
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

mixin DrinkAbilityMixin {
  String drink() => 'gluk...gluk...gluk';
}

class Animal {
  
}

// this mixin class just can use for Animal class, if you use for other class, will error
mixin DrinkAbilityMixin2 on Animal {
  String drink() => 'gluk...gluk...gluk';
}

main(List<String> args) {
  List<Monster> monsters = [];

  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUburKecoa());

  for (Monster m in monsters) {
    if (m is DrinkAbilityMixin) {
      print((m as DrinkAbilityMixin).drink());
    }
  }
}