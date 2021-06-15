//if this code have more than 1 SAMPLE, you can comment other SAMPLE first for run SAMPLE you want test run

main(List<String> args) {
  List<int> myList  = [];
  List<int> list = [5, 3, 3, 2, 4, 1, 5];
  List<String> listForString = [];

  //SAMPLE 1
  int e = list[0];
  print(e);

  //SAMPLE 2
  for (int index = 0; index < list.length; index += 1) {
    print(list[index]);
  }

  //SAMPLE 3
  for (var number in list) {
    print(number);
    
  }

  //SAMPLE 4 use anonymous function
  list.forEach((number) {
    print(number);
  });

  //SAMPLE 5
  myList.add(10);
  myList.addAll(list);
  myList.insert(0, 10);
  myList.insertAll(1, [20, 30, 20]);
  myList.remove(20);
  myList.removeLast();
  myList.removeAt(0);
  myList.removeRange(0, 3);
  myList.removeWhere((number) => number % 2 != 0); //create function delete odd numbers

  myList.forEach((number) {
    print(number);
  });

  //SAMPLE 6 for check contains from list
  if (list.contains(7)) {
    print("FALSEEEE!");
  } else if (list.contains(3)) {
    print("TRUEEEEE!");
  }

  //SAMPLE 7 get sublist
  myList = list.sublist(1, 2);
  myList.forEach((number) {
    print(number);
  });

  //SAMPLE 8 for delete list
  list.clear();
  list.forEach((number) {
    print(number);
  });

  //SAMPLE 9
  list.sort();
  list.forEach((number) {
    print(number);
  });

  //SAMPLE 10
  if (list.every((number) => number % 2 != 0)) {
    print("All odd number");
  } else {
    print("Not all odd number");
  }

  //SAMPLE 11
  //and for the opposite you can use a isNotEmpty
  if (list.isEmpty) {
    print("Null list");
  } else {
    print("Not null list");
  }

  //SAMPLE 12 make element in list should not be the same
  Set<int> s;
  s = list.toSet();

  s.forEach((element) {
    print(element);
  });

  //SAMPLE 13 mapping list
  list.forEach((element) {
    listForString.add("this is a number " + element.toString());
  });  

  listForString.forEach((element) {
    print(element);
  });

  //SAMPLE 14
  listForString = list.map((number) => "This is a number  " + number.toString()).toList();

  listForString.forEach((element) {
    print(element);
  });

}