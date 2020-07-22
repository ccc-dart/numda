import 'package:test/test.dart';
import 'package:numda/numda.dart';

void main() {
  setUp(() async {
    // print("setUp()");
  });
  tearDown(() async {
    // print("tearDown()");
  });
  group('Complex', () {
    test('constructor', () {
      expect(Complex(1,2).toString(), equals('1.0+2.0i'));
      expect(Complex.parse('1+2i'), equals(Complex(1,2)));
    });

    test('operator', () {
      var a = Complex(1,2), b = Complex.parse('2-1i');
      expect(a+b, equals(Complex.parse('3+1i')));
    });
  });
/*
  group('int', () {
    test('.remainder() returns the remainder of division', () {
      expect(11.remainder(3), equals(2));
    });

    test('.toRadixString() returns a hex string', () {
      expect(11.toRadixString(16), equals('b'));
    });
  });
*/
}
