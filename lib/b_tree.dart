class _Fork{ 
  int? key;                                 // Ключ узла.
  String value;                             // Значение, которое хранит узел.
  _Fork? left;                              // Ключ левого узла.
  _Fork? right;                             // Ключ правого узла.
  _Fork(this.index, this.value);            // Конструктор.
}

class BTree{
  _Fork root;                               // Корень дерева должен быть всегда, даже если он null.
  
  /// Добавляет элемент.
  void add(int key, String value){
    final newFork = _Fork(key, value);      // Добавляемый узел.
    _Fork? tempFork = root;
    //if (root == null){
    //  root = newFork;
    //}
    
    //else if(newFork.key == root.key){
    //  root.value = newFork.value;
    //}
    while((tempFork.key != null) or (tempFork.key != newFork.key)){
      if (tempFork.key > newFork.key){
        tempFork = tempFork.right;
      }
      if (tempFork.key < newFork.key){
        tempFork = tempFork.left;
      }
    }
    tempFork = newFork;
  }
  
  int? valueAt(int keq){
    
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
  /// По идее, эта переменная должна быть приватной внутри класса.
  /// Снаружи пользователи не должны видеть ее, тем более менять ее значение.
  ///
  /// Но если мы в тестах захотим проверить значение переменной, то ее
  /// придется оставить публичной.
  ///
  /// Мы оставляем тут эту аннотацию, чтобы пользователи класса знали, что это
  /// поле не для них, а для тестов. Анализатор будет показывать ошибки или
  /// предупреждения при попытке использовать такие поля и методы.
  @visibleForTesting                      
// И на эту ругается.

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