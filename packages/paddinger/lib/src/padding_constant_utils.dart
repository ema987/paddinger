import 'package:paddinger/src/padding_constant_name.dart';
import 'package:recase/recase.dart';

String toNameForGeneration(String constantName) {
  return _constantNameToUpperCase(_getConstantNameWithoutPrefix(constantName));
}

String _getConstantNameWithoutPrefix(String constantName) {
  return constantName.split(PADDING_CONST_PREFIX)[1];
}

String _constantNameToUpperCase(String constantName) {
  return constantName.pascalCase;
}
