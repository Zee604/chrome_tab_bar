# Chrome Tab Bar

Chrome Tab Bar with custom corner radius, background color, tab selected color, tab text, and many more.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  chrome_tab_bar: ^1.0.0
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:chrome_tab_bar/fancy_containers.dart';
```
```dart
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChromeTabBar(
      tabSelectedColor: Colors.white,
      backgroundColor: Colors.blue,
      tabsList: const [
        SizedBox(),
        SizedBox(),
        SizedBox(),
        SizedBox(),
        SizedBox(),
      ],
      tabText:const [
        "Tab One",
        "Tab Two",
        "Tab Three",
        "Tab Four",
        "Tab Five",
      ],

    );
  }
}
```


<img  src="https://github.com/Zee604/chrome_tab_bar/blob/master/chrome_tab_bar_img.PNG"  alt="">

