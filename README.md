# transition plus 
You can use this package for transition between screens with interesting way with amazing animation.

## Demo of scale transition

<img src="https://github.com/SajadRahimi1/transition-plus/raw/main/record/record.gif" width="340" height="640" title="Screen Shoot">

## How to use it

First of all you need to add it to pubspec.yml .

```yaml
dependencies:
  transition_plus: 0.0.12
```

Then import it to your class
```dart
import 'package:transition_plus/transition_plus.dart';
```

Now you can use it 🐱‍🏍.

```dart
Navigator.push(context, ScaleTransition1(page: SecondPage())),
```


## Diffrent animation

By default transition is start from center of screen. You can change it like this

```dart
Navigator.push(context, ScaleTransition1(page: SecondPage(), type: ScaleTrasitionTypes.bottom)),
```

## List of animation type for scale transition

```dart
  // trasition that start from bottom to top
  bottom

  // trasition that start from top to bottom
  top

  // trasition that start from bottom left
  bottomLeft

  // trasition that start from bottom right
  bottomRight

  // trasition that start from center
  center

  // trasition that start from right
  right

  // trasition that start from left
  left
```
