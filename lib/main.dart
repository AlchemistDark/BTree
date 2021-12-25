import "b_tree.dart";
/// Иногда работает. Наверное...
void main(){
  final tree = BTree();
  print(tree.root);
  //tree.add(15, "Спать");
  //print(tree.root);
  print(tree.valueAt(15));
}