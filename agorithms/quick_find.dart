
import 'user_input.dart';
void quickFind() {
  const arr_sz = 10;
  List<int> arr = List.filled(arr_sz, 0);
  int? p, q;

  var userInp = Input();

  //Fill array with the objects
  for (int i = 0; i < arr_sz; i++) {
    arr[i] = i;
  }

  while (true) {
    userInp.fetch();
    p = userInp.p;
    q = userInp.q;
    if(p == null || q == null){
      break;
    }
    if((p < 0 || p >= arr_sz) || (q < 0 || q >= arr_sz)) {
      print("Input must range from 0 to ${arr_sz-1}");
      continue;
    };

    if (arr[p] == arr[q]) continue;
    for (int i = 0; i < arr_sz; i++) {
      if (arr[i] == arr[p]) {
        arr[i] = arr[q];
      }
    }
    print(arr);
  }
}
