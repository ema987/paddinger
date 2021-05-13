import 'package:build/build.dart';
import 'package:paddinger/src/paddinger_generator.dart';
import 'package:source_gen/source_gen.dart';

///Paddinger generator used with [Builder]
Builder paddingerGenerator(BuilderOptions options) =>
    SharedPartBuilder([PaddingerGenerator()], 'paddinger_generator');
