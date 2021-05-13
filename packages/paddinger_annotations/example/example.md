`paddings.dart`
```dart
// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:paddinger_annotations/paddinger_annotations.dart';

part 'paddings.g.dart';

@paddinger
const double PADDING_NORMAL = 8;
@paddinger
const double PADDING_EXTREME = 56;
```

`main.dart`
```dart
import 'package:example/paddings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        NormalAllPadding(
            child: Row(
          children: [
            Text("Hello Paddinger"),
          ],
        )),
        ExtremeVerticalPadding(
            child: Row(
          children: [
            Text("Hello Paddinger again"),
          ],
        ))
      ])),
    );
  }
}
```