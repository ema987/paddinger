# Paddinger

Paddinger is a Flutter package to generate Padding widgets.

Given a set of constants like:

```dart
@paddinger
const double PADDING_NORMAL = 8;
```

A set of Padding classes will be generated like:

```
NormalAllPadding
NormalLeftPadding
NormalTopPadding
NormalRightPadding
NormalBottomPadding
NormalHorizontalPadding
NormalVerticalPadding
NormalLeftTopPadding
NormalLeftBottomPadding
NormalRightTopPadding
NormalRightBottomPadding
```

So instead of writing:

```dart
Padding(
  padding: const EdgeInsets.all(PADDING_NORMAL),
  child: Text(
    'MyText',
  ),
)
```

you can just write:

```dart
NormalAllPadding(
  child: Text(
    'MyText',
  ),
)
```

Furthermore, a set of EdgeInsets constants will be generated like:

```
NORMAL_ALL_PADDING
NORMAL_LEFT_PADDING
NORMAL_TOP_PADDING
NORMAL_RIGHT_PADDING
NORMAL_BOTTOM_PADDING
NORMAL_HORIZONTAL_PADDING
NORMAL_VERTICAL_PADDING
NORMAL_LEFT_TOP_PADDING
NORMAL_LEFT_BOTTOM_PADDING
NORMAL_RIGHT_TOP_PADDING
NORMAL_RIGHT_BOTTOM_PADDING
```

So instead of writing:

```dart
Container(
    padding: EdgeInsets.all(PADDING_EXTREME),
    child: Text(
      'MyText',
))
```

you can just write:

```dart
Container(
    padding: EXTREME_ALL_PADDING,
    child: Text(
      'MyText',
))
```

## How to use it

- Add the following as dependencies:
```yaml
dependencies:
  paddinger_annotations: [latestVersionHere]

dev_dependencies:
  paddinger: [latestVersionHere]
```

- Create a file where you will add all your `PADDING_` constants, the file could be named `paddings.dart`.
- Add your favourite `material` or `cupertino` import like:

```dart
// ignore: unused_import
import 'package:flutter/material.dart';
```

- Add the `part` directive:

```dart
part 'paddings.g.dart';
```

- Run the code generation with `flutter pub run build_runner build --delete-conflicting-outputs`

Have a look at the example app to see it in practice.

## Publishing

Dry Run:

```flutter packages pub publish --dry-run```

To publish:

```flutter packages pub publish```