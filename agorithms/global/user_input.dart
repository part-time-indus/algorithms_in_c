import "dart:core";
import 'dart:io';
class Input{
    int? p;
    int? q;

    fetch(){
        print("Please enter index of the first element of the connection:");
        var pstr = stdin.readLineSync();
        print("Please enter index of the second element of the connection:");
        var qstr = stdin.readLineSync();

        if (pstr != null || qstr != null) {
          p = int.tryParse(pstr!);
          q = int.tryParse(qstr!);
          if(pstr.isEmpty || qstr.isEmpty){
            return;
          }
          if (p == null || q == null) {
              print("Both input must be numbers\n");
              fetch();
          }
        }



    }
}