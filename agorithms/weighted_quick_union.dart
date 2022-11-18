import 'global/set_up.dart';
import 'global/user_input.dart';

void weighted_quick_union(){
  int? p;
  int? q;

  set_up();
  var inp = Input();

  while(true){
    int i;
    int j;

    inp.fetch();

    p = inp.p;
    q = inp.q;

    if(p == null || q == null){
      break;
    }

    if(!input_in_range(arr_sz, p, q)) continue;

    for(i = p; i != arr[i]; i = arr[i]);
    for(j = q; j != arr[j]; j = arr[j]);

    if(i == j) continue;

    if(wt[i] < wt[j]){
      arr[i] = arr[j];
      wt[j] = wt[j] + wt[i];
    }else{
      arr[j] = arr[i];
      wt[i] = wt[i] + wt[j];
    }

    print(arr);
  }
}