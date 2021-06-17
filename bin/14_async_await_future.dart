class Hohoho {
  String name = 'default name';

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'David';
    print('get data [done]');
  }
}

main(List<String> args) {
  var h = Hohoho();
   print('job 1');
   print('job 2');
   h.getDataAsync().then((_) {
     print('job 3: ' + h.name);
   });
   print('job 4');
}