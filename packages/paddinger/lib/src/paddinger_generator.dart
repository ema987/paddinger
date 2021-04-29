import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:paddinger/src/padding_constant_utils.dart';
import 'package:paddinger/src/padding_constant_validator.dart';
import 'package:paddinger/src/padding_widgets_generators.dart';
import 'package:paddinger_annotations/paddinger_annotations.dart';
import 'package:source_gen/source_gen.dart';

class PaddingerGenerator extends GeneratorForAnnotation<Paddinger> {
  @override
  FutureOr<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final constantName = element.name!;
    validatePaddingConstantName(constantName);
    final generatedName = toNameForGeneration(constantName);
    return generatePaddingWidgets(generatedName, constantName);
  }
}
