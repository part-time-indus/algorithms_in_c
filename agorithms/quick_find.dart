//TODO: Implement quick find

import 'dart:io';

void quickFind() {
  const arr_sz = 10;
  List<int> arr = List.filled(arr_sz, 0);

  String? p_str, q_str;
  int? p, q;

  bool terminateProg = false;

  //Fill array with the objects
  for (int i = 0; i < arr_sz; i++) {
    arr[i] = i;
  }

  while (!terminateProg) {
    print("Please enter index of the first element of the connection:");
    p_str = stdin.readLineSync();
    print("Please enter index of the second element of the connection:");
    q_str = stdin.readLineSync();

    //Terminate if no bytes precede end of file
    if (p_str == null || q_str == null) {
      terminateProg = true;
    }

    p = int.tryParse(p_str!);
    q = int.tryParse(q_str!);
    if (p == null || q == null || p >= arr_sz || q >= arr_sz) {
      print("Input must be numbers between 0 and ${arr_sz - 1}\n");
      print("Please enter index of the first element of the connection:   ");
      p_str = stdin.readLineSync();
      print("Please enter index of the second element of the connection:   ");
      q_str = stdin.readLineSync();
      continue;
    }
    if (arr[p] == arr[q]) continue;
    for (int i = 0; i < arr_sz; i++) {
      if (arr[i] == arr[p]) {
        arr[i] = arr[q];
      }
    }
    print(arr);
  }
}
