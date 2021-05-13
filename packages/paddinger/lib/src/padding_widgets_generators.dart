import 'package:recase/recase.dart';

String generatePaddingWidgets(String paddingName, String constantName) {
  return '''
  
  ${_addStartComment(paddingName)}
  
  ${_addAllPaddings(paddingName, constantName)}
  
  ${_addOnlyPaddings(paddingName, constantName)}
  
  ${_addSymmetricPaddings(paddingName, constantName)}
  
  ${_addMissingCombinationPaddings(paddingName, constantName)}

  ${_addEndComment(paddingName)}

    ''';
}

String _addStartComment(String paddingName) {
  return '''
// **************************************************************************
// START $paddingName
// **************************************************************************
''';
}

String _addEndComment(String paddingName) {
  return '''
// **************************************************************************
// END $paddingName
// **************************************************************************
''';
}

String _addAllPaddings(String paddingName, String constantName) {
  return '''
class ${paddingName}AllPadding extends Padding {
    const ${paddingName}AllPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.all($constantName),
            child: child);
}
  ''';
}

String _addOnlyPaddings(String paddingName, String constantName) {
  final onlyPaddingKeys = PaddingDirection.values
      .map((paddingDirection) => paddingDirection.asPascalCase);
  final onlyPaddingWidgets = onlyPaddingKeys.map((paddingKey) => '''
class $paddingName${paddingKey}Padding extends Padding {
    const $paddingName${paddingKey}Padding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(${paddingKey.toLowerCase()}: $constantName),
            child: child);
}
  ''').toList();
  return onlyPaddingWidgets.join();
}

String _addSymmetricPaddings(String paddingName, String constantName) {
  return '''
class ${paddingName}HorizontalPadding extends Padding {
    const ${paddingName}HorizontalPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.symmetric(horizontal: $constantName),
            child: child);
}

class ${paddingName}VerticalPadding extends Padding {
  const ${paddingName}VerticalPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.symmetric(vertical: $constantName),
            child: child);
}
''';
}

String _addMissingCombinationPaddings(String paddingName, String constantName) {
  final missingCombinationPaddingKeys = [
    _MissingPaddingCombinationKey(PaddingDirection.LEFT, PaddingDirection.TOP),
    _MissingPaddingCombinationKey(
        PaddingDirection.LEFT, PaddingDirection.BOTTOM),
    _MissingPaddingCombinationKey(PaddingDirection.RIGHT, PaddingDirection.TOP),
    _MissingPaddingCombinationKey(
        PaddingDirection.RIGHT, PaddingDirection.BOTTOM),
  ];
  final missingCombinationPaddingWidgets =
      missingCombinationPaddingKeys.map((paddingKey) => '''
class $paddingName${paddingKey.horizontalAsPascalCase}${paddingKey.verticalAsPascalCase}Padding extends Padding {
    const $paddingName${paddingKey.horizontalAsPascalCase}${paddingKey.verticalAsPascalCase}Padding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(${paddingKey.horizontalAsCamelCase}: $constantName, ${paddingKey.verticalAsCamelCase}: $constantName),
            child: child);
}
  ''').toList();
  return missingCombinationPaddingWidgets.join();
}

enum PaddingDirection { LEFT, TOP, RIGHT, BOTTOM }

extension on PaddingDirection {
  String get asPascalCase {
    return _describeEnum(this).pascalCase;
  }
}

class _MissingPaddingCombinationKey {
  _MissingPaddingCombinationKey(this.horizontal, this.vertical);
  final PaddingDirection horizontal;
  final PaddingDirection vertical;
}

extension on _MissingPaddingCombinationKey {
  String get horizontalAsPascalCase {
    return _describeEnum(horizontal).pascalCase;
  }

  String get horizontalAsCamelCase {
    return _describeEnum(horizontal).camelCase;
  }

  String get verticalAsPascalCase {
    return _describeEnum(vertical).pascalCase;
  }

  String get verticalAsCamelCase {
    return _describeEnum(vertical).camelCase;
  }
}

String _describeEnum(dynamic value) {
  return value.toString().split('.').last;
}
