
import 'global/user_input.dart';
import 'global/set_up.dart';
void quickFind() {

  int? p, q;
  var userInp = Input();
  set_up();
  
  while (true) {
    userInp.fetch();
    p = userInp.p;
    q = userInp.q;
    if(p == null || q == null){
      break;
    }
    if(!input_in_range(arr_sz, p, q)) continue;

    if (arr[p] == arr[q]) continue;
    for (int i = 0; i < arr_sz; i++) {
      if (arr[i] == arr[p]) {
        arr[i] = arr[q];
      }
    }
    print(arr);
  }
}
