import 'dart:math' as math;
import 'package:sprintf/sprintf.dart';

class Complex {
  double a,b;

  Complex(this.a,this.b);

  conj() { return Complex(a, -b); }

  Complex operator +(Complex o) {
    return Complex(a+o.a, b+o.b);
  }

  Complex operator -(Complex o) {
    return Complex(a-o.a, b-o.b);
  }

  Complex operator *(o) {
    var c=o.a, d=o.b;
    return Complex(a*c-b*d, a*d+b*c);
  }
  
  Complex operator /(o) {
    var c=o.a, d=o.b;
    return Complex((a*c+b*d)/(c*c+d*d), (b*c-a*d)/(c*c+d*d));
  }

  bool operator ==(o) {
    return a==o.a && b==o.b;
  }

  log() {
    var r=a*a+b*b;
    var w = math.log(r)/2;
    var x = math.acos(a/math.sqrt(r));
    return Complex(w, x);
  }
  
  exp() {
    var r=math.exp(a);
    return Complex(r*math.cos(b), r*math.sin(b));
  }

  trunc(int prec) {
    return Complex(double.parse(a.toStringAsFixed(prec)), double.parse(b.toStringAsFixed(prec)));
  }

  str(int prec) {
    var c = this.trunc(prec);
    return c.toString();
  }

  toString() {
    var op = (b>=0)?"+":"-";
    return '$a$op${b.abs()}i';
  }

  static parse(String s) {
    var regexp = RegExp(r'^([^+-]*)([+-]([\d.]+)?)i$');
    var match = regexp.firstMatch(s);
    var a = double.parse(match.group(1));
    var b = double.parse(match.group(2));
    return Complex(a, b);
  }
}
