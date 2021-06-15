//if this code have more than 1 SAMPLE, you can comment other SAMPLE first for run SAMPLE you want test run

main() {
  int i = 0;
  int x = 5;

  //SAMPLE 1
  for (int a = 0; a < 5; a += 1) {
    print("Hallo");
    
  }

  //SAMPLE 2
  while (i < 5) {
    print("While " + i.toString());
    i++; //mean i += 1 or i = i + 1
  }

  //SAMPLE 3
  do {
    print("DoWhile " + x.toString());
    x += 1;
  } while (x < 5);

  //SAMPLE 4
  int y = 10;
  int z = y++;
  print(y.toString() + " and " + z.toString());

  //SAMPLE 5
  int c = 10;
  int d = ++c;
  print(c.toString() + " and " + d.toString());
}