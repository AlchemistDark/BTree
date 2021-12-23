import 'package:b_tree/b_tree.dart';
import 'package:test/test.dart';
/// Иногда работает. Наверное...
void main(){
  test("first adding", (){
    final tree = BTree();
    expect(tree.root, equals(null));
    tree.add(15, "Спать");
    expect(tree.root, isNotNull);
    expect(tree.root!.key, equals(15));
    expect(tree.root!.value, equals("Спать"));
    expect(tree.root!.left, equals(null));
    expect(tree.root!.right, equals(null));
  });
}