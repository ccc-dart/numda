import 'package:numda/numda.dart';

main() {
  var a = Complex(1,2); // , b = c(1,1);
  var b = Complex.parse("1-1i");
  print("a=$a");
  print("b=$b");
  print("a+b=${a+b}");
  print("a-b=${a-b}");
  print("a*b=${a*b}");
  print("a/b=${a/b}");
  print("a.exp()=${a.exp()}");
  print("a.log()=${a.log()}");
  print("a.log().str(4)=${a.log().str(4)}");
}
