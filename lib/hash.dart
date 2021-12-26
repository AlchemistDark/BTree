import "b_tree.dart";

class Hash extends BTree{
  /// Добавить по индексу.
  operator []=(int key, String value) {
    super.add(key, value);
  }
  /// Обратиться по индексу.
  String? operator [](int key){
    return super.valueAt(key);
  }
}