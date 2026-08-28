// import 'package:riverpod/riverpod.dart';

// final futureProvider = FutureProvider<int>((ref) async {
//   await Future.delayed(Duration(seconds: 2));
//   throw "Network Not Working";

//   return 3;
// });

import 'package:riverpod/riverpod.dart';

final futureProvider = FutureProvider<List<String>>((ref) async {
  await Future.delayed(Duration(seconds: 2));
  //   throw "Network Not Working";

  return ["Emon", "Habib"];
});
