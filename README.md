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
        tabsList: [
          ChromeTab(widget: const SizedBox(), title: "Title One"),
          ChromeTab(widget: const SizedBox(), title: "Title Two")
        ], 
        tabSelectedColor: Colors.green,
        tabbackgroundColor: Colors.black,
    );
  }
}
```


<img  src="https://github.com/Zee604/chrome_tab_bar/blob/master/chrome_tab_bar_img.PNG"  alt="">

