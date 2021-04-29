import 'package:paddinger/src/padding_constant_validator.dart';
import 'package:test/test.dart';

void main() {
  test(
      'GIVEN a valid padding constant name, WHEN validatePaddingConstantName(), THEN it returns normally',
      () {
    expect(
        () => validatePaddingConstantName("PADDING_VERY_BIG"), returnsNormally);
  });

  test(
      'GIVEN a not valid padding constant name, WHEN validatePaddingConstantName(), THEN an exception is thrown',
      () {
    expect(() => validatePaddingConstantName("PADDIN_VERY_BIG"),
        throwsA(isA<Exception>()));
  });
}
