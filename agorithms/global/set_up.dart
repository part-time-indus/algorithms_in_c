const arr_sz = 10;
List<int> arr = List.filled(arr_sz, 0);
void set_up(){
    for (int i = 0; i < arr_sz; i++) {
    arr[i] = i;
  }
}

bool input_in_range(int arr_sz, int p, int q){
  if((p < 0 || p >= arr_sz) || (q < 0 || q >= arr_sz)) {
    print("Input must range from 0 to ${arr_sz-1}");
    return false;
  };
  return true;

}