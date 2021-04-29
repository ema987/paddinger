import 'package:paddinger/src/padding_constant_utils.dart';
import 'package:test/test.dart';

void main() {
  test(
      'GIVEN a valid padding constant name, WHEN toNameForGeneration(), THEN a valid name is generated',
      () {
    expect(toNameForGeneration("PADDING_BIG"), "Big");
  });

  test(
      'GIVEN a valid padding constant name with two underscores, WHEN toNameForGeneration(), THEN a valid name is generated',
      () {
    expect(toNameForGeneration("PADDING_VERY_BIG"), "VeryBig");
  });
}
