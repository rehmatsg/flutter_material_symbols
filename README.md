# Material Symbols

![fonts.google.com](https://raw.githubusercontent.com/rehmatsg/flutter_material_symbols/main/assets/images/fonts.google.com.png)
Image Source: [material.io](https://material.io/blog/introducing-symbols)

[![pub package](https://img.shields.io/pub/v/flutter_material_symbols.svg)](https://pub.dev/packages/flutter_material_symbols)
[![donate](https://img.shields.io/static/v1?label=github&message=View%20On%20GitHub&color=black)](https://github.com/rehmatsg/flutter_material_symbols)

This Flutter package aims to add all icons from Material Symbols introduced by Google along with the Material 3.

> Read Google's official announcement [here](https://material.io/blog/introducing-symbols).

## Installation

To use this package, add `flutter_material_symbols` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

Using the command line:

```bash
flutter pub add flutter_material_symbols
```

Or, if you prefer to add directly to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_material_symbols: ^0.0.1
```

## Usage

Import the package:

```dart
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
```

Use the `MaterialSymbols` class to access the icons:

```dart
Icon(MaterialSymbols.favorite),
```

```dart
IconButton(
  icon: Icon(MaterialSymbols.add),
  onPressed: () {},
)
```

This package also supports filled, outlined, and sharp icons, which can be used by adding the `filled`, `outlined`, or `sharp` suffix to the icon name:

![Icon Styles](https://raw.githubusercontent.com/rehmatsg/flutter_material_symbols/main/assets/images/icons.png)
Image Source: [material.io](https://material.io/blog/introducing-symbols)

```dart
Icon(MaterialSymbols.favorite_filled),
```

```dart
Icon(MaterialSymbols.favorite_outlined),
```

```dart
Icon(MaterialSymbols.favorite_sharp),
```

## Contributors

- [Rehmat Singh Gill](https://github.com/rehmatsg)

## Report Issues / Bugs

If you find any bugs or misplaced icons, please open an issue [here](https://github.com/rehmatsg/flutter_material_symbols/issues).

## License

This package is licensed under the [MIT License](https://github.com/rehmatsg/flutter_material_symbols/LICENSE)
