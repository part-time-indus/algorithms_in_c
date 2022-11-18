import 'global/set_up.dart';
import 'global/user_input.dart';

void quickUnion(){

  int? p;
  int? q;

  set_up();
  var inp = Input();

  while(true){
    //Fetch new input
    inp.fetch();
    p = inp.p;
    q = inp.q;

    //Check if user wants to quit (hit enter when asked for input)
    if(p == null || q == null){
      break;
    }

    //Is input within range? Or do we need fresh set of input
    if(!input_in_range(arr_sz, p, q)) continue;

    //establish connection using quick union
    int i;
    int j;

    for(i = p; i != arr[i]; i = arr[i]);
    for(j = q; j != arr[j]; j = arr[j]);

    if(i == j) continue;

    arr[i] = arr[j];

    print(arr);
  }
}