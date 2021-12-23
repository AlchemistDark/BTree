import 'package:meta/meta.dart';
@visibleForTesting
class Fork{
  @visibleForTesting
  int key;                                 // Ключ узла.
  @visibleForTesting
  String value;                            // Значение, которое хранит узел.
  @visibleForTesting
  Fork? left;                              // Ключ левого узла.
  @visibleForTesting
  Fork? right;                             // Ключ правого узла.

  Fork(this.key, this.value);              // Конструктор.
}

class BTree{
  @visibleForTesting
  Fork? root;                               // Корень дерева должен быть всегда, даже если он null.
  
  /// Добавляет элемент.
  void add(int key, String value){
    final newFork = Fork(key, value);       // Добавляемый узел.
    if (root == null){
      root = newFork;
      return;
    }
    Fork tempFork = root!;

    do {
      if (tempFork.key == key){
        tempFork.value = value;
        return;
      }

      if (key > tempFork.key) {
        if (tempFork.right != null) {
          tempFork = tempFork.right!;
        }
        else {
          tempFork.right = newFork;
          return;
        }
      }

      if (key < tempFork.key) {
        if (tempFork.left != null) {
          tempFork = tempFork.left!;
        }
        else {
          tempFork.left = newFork;
          return;
        }
      }
    } while (true);           // Oops...
  }
  
  /// Ищет значение по индексу.
  String? valueAt(int key){
    if (root == null){
      return null;
    }

    Fork tempFork = root!;
    do {
      if (tempFork.key == key){
        return tempFork.value;
      }

      if (key > tempFork.key) {
        if (tempFork.right != null) {
          tempFork = tempFork.right!;
        }
        else {
          return null;
        }
      }

      if (key < tempFork.key) {
        if (tempFork.left != null) {
          tempFork = tempFork.left!;
        }
        else {
          return null;
        }
      }
    } while (true);           // Oops...

  }
}



/*class _Record {
  int? value;                               // Значение записи.
  _Record? next;                            // Указатель на следующую ячейку.
  _Record(this.value);                      // Конструктор.
}
  
typedef bool BFuncOfInt(int? arg);          // Если вставить bool то где-то что-то ломается...

*/
/*class SLList {

  _Record? root;

*/
/*
  /// Ищет значение по индексу.
  int? valueAt(int a){
    int? n = 0;
    _Record? rec = root;
    if(a > length){
      return null;
    }
    else{
      for(var i = 0; (i < a); i++){
        n = rec!.value;
        rec = rec.next;
      };
      return n;
    };
  }
*/
/*
  /// Удалить число по индексу.
  void deletAt(int a){
    int lng = length;
    if((a < 0) || (a > (lng-1)) || (root == null)){ // Удалять нечего.
      return;
    };
    if(a == 0){                                     // Удалить корневой элемент.
      root = root!.next;
      return;
    };
    if((0 < a) && (a < lng)){                       // Остальные случаи.
      _Record? rec1 = root;
      _Record? rec2;
      for(var i = 0; (i < (a-1)); i++){
        rec1 = rec1!.next;
      };
      rec2 = rec1!.next;
      rec1.next = rec2!.next;
      return;
    };
  }
}*/