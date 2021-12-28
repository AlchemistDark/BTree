import 'dart:async';

import "b_tree.dart";
import "hash.dart";
/// Иногда работает. Наверное...
void main(){
  final tree = BTree();
  print(tree.root);
  //tree.add(15, "Спать");
  //print(tree.root);
  print(tree.valueAt(15));
  Hash hash = Hash();
  hash[4]= "reading";
  print(hash[4]);
  post1(15, hash);                                            //Сначала вызыавем по индексу.
  hash[15] = "Значение задано после вызова функции.";         //Потом присваем по индексу.
  Hash hash2 = Hash();
  desynchronizer(hash2);
  String? str = hash2[3];
  print("В итоге: $str");                                     //Оно выполнится до получения результата stream, потому будет null.
}

Future<void> post1(int key, Hash hash) async {
  String? returned =  await post2(key, hash);
  print(returned);
}

Future<String?> post2 (int key, Hash hash) => Future((){
  return hash[key];
});

void desynchronizer(Hash hash){
  final KontrolerPotoca = StreamController.broadcast();
  KontrolerPotoca.stream.listen((integer) {
    hash[integer] = "value = $integer";
    String? _str = hash[integer];
    print("Поток 1:  $_str");
  });
  KontrolerPotoca.stream.listen((integer) {
    String? _str = hash[integer];
    print("Поток 2:  $_str");
  });
  KontrolerPotoca.add(1);
  KontrolerPotoca.add(2);
  KontrolerPotoca.add(3);
  KontrolerPotoca.close();
}

