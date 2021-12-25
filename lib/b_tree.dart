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
    Fork tempFork = root!;                  // Начинаем с корня.
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
    } while (true);                              // Oops...
  }
  
  /// Ищет значение по индексу.
  String? valueAt(int key){
    Fork? tempFork = root!;                     // Начинаем с корня.
    while (tempFork != null){
      if (tempFork.key != key) {
        if (key > tempFork.key) {
          tempFork = tempFork.right!;
        }
        if (key < tempFork.key) {
          tempFork = tempFork.left!;
        }
      }
      else {
        return tempFork.value;
      }
    }
    return null;
  }
}