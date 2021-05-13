import 'package:paddinger/src/padding_constant_name.dart';

void validatePaddingConstantName(String constantName) {
  if (!constantName.startsWith(PADDING_CONST_PREFIX)) {
    throw Exception(
        'Padding const names must start with $PADDING_CONST_PREFIX');
  }
}
