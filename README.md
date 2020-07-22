# numda

numeric library for dart (just like numpy)

## example

File: complex1.dart

```
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
```

run:

```
$ dart complex1.dart        
a=1.0+2.0i
b=1.0-1.0i
a+b=2.0+1.0i
a-b=0.0+3.0i
a*b=3.0+1.0i
a/b=-0.5+1.5i
a.exp()=-1.1312043837568135+2.4717266720048188i
a.log()=0.8047189562170501+1.1071487177940904i
a.log().str(4)=0.8047+1.1071i
```

## test

```

$ git clone https://github.com/ccc-dart/numda.git

$ cd numda

$ pub run test/test1.dart
00:00 +0: Complex constructor

00:00 +1: Complex operator

00:00 +2: All tests passed!

$ pub run example/complex1.dart    
a=1.0+2.0i
b=1.0-1.0i
a+b=2.0+1.0i
a-b=0.0+3.0i
a*b=3.0+1.0i
a/b=-0.5+1.5i
a.exp()=-1.1312043837568135+2.4717266720048188i
a.log()=0.8047189562170501+1.1071487177940904i
a.log().str(4)=0.8047+1.1071i
```