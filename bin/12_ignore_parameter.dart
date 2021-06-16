class People {
  String name;
  Function(String name) doingHobby;

  People(this.name, {this.doingHobby});

  void takeRest() {
    if (doingHobby != null) {
      doingHobby(name);
    }
  }
}

// void davidsHobby(String name) {
//   print('$name is swimming');
// }

main(List<String> args) {
  // if you don't want use string name in parameter, you can use ignore parameter use underscore
  var p = People('David', doingHobby: (_) {
    print('Swimming in the pool');
  });

  p.takeRest();
}