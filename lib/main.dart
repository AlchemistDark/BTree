import "b_tree.dart";
import "hash.dart";
/// Иногда работает. Наверное...
void main(){
  final tree = BTree();
  print(tree.root);
  //tree.add(15, "Спать");
  //print(tree.root);
  print(tree.valueAt(15));
  final hash = Hash();
  hash[4]= "reading";
  print(hash[4]);
}