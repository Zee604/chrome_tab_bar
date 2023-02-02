import 'package:flutter/material.dart';

class ChromeTabBar extends StatefulWidget {
  final List<ChromeTab> tabsList;
  final Color tabSelectedColor;
  final Color tabbackgroundColor;
  final Color selectedTextColor;
  final Color unSelectedTextColor;

  const ChromeTabBar({
    Key? key,
    required this.tabsList,
    required this.tabSelectedColor,
    required this.tabbackgroundColor,
    this.selectedTextColor = Colors.black,
    this.unSelectedTextColor = Colors.white,
  }) : super(key: key);

  @override
  State<ChromeTabBar> createState() => _ChromeTabBarState();
}

class _ChromeTabBarState extends State<ChromeTabBar> {
  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.tabbackgroundColor,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: widget.tabSelectedColor,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        color: widget.tabbackgroundColor,
                        width: double.infinity,
                        height: 35.0,
                      ),
                      Column(children: [
                        Container(
                          color: widget.tabbackgroundColor,
                          width: double.infinity,
                          height: 20.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 30.0,
                          color: Colors.transparent,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50.0,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                      color: widget.tabbackgroundColor,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: index == 0
                                              ? const Radius.circular(17.0)
                                              : const Radius.circular(0.0))),
                                ),
                                for (var tabs in widget.tabsList)
                                  Expanded(
                                    child: InkWell(
                                      hoverColor: Colors.transparent,
                                      onTap: () {
                                        setState(() {
                                          index = widget.tabsList.indexOf(tabs);
                                        });
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: index ==
                                                    widget.tabsList
                                                        .indexOf(tabs)
                                                ? widget.tabSelectedColor
                                                : widget.tabbackgroundColor,
                                            borderRadius: BorderRadius.only(
                                              topRight: index ==
                                                      widget.tabsList
                                                          .indexOf(tabs)
                                                  ? const Radius.circular(17.0)
                                                  : const Radius.circular(0.0),
                                              topLeft: index ==
                                                      widget.tabsList
                                                          .indexOf(tabs)
                                                  ? const Radius.circular(17.0)
                                                  : const Radius.circular(0.0),
                                              bottomLeft: index - 1 ==
                                                          widget.tabsList
                                                              .indexOf(tabs) &&
                                                      index - 1 != 0
                                                  ? const Radius.circular(17.0)
                                                  : index + 1 ==
                                                          widget.tabsList
                                                              .indexOf(tabs)
                                                      ? const Radius.circular(
                                                          17.0)
                                                      : const Radius.circular(
                                                          0.0),
                                              bottomRight: index - 1 ==
                                                          widget.tabsList
                                                              .indexOf(tabs) &&
                                                      index - 1 !=
                                                          widget.tabsList
                                                                  .length -
                                                              1
                                                  ? const Radius.circular(17.0)
                                                  : index + 1 ==
                                                              widget.tabsList
                                                                  .indexOf(
                                                                      tabs) &&
                                                          tabs !=
                                                              widget
                                                                  .tabsList.last
                                                      ? const Radius.circular(
                                                          17.0)
                                                      : const Radius.circular(
                                                          0.0),
                                            )),
                                        child: Text(
                                          tabs.title,
                                          style: TextStyle(
                                              color: index ==
                                                      widget.tabsList
                                                          .indexOf(tabs)
                                                  ? widget.selectedTextColor
                                                  : widget.unSelectedTextColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                Container(
                                  width: 50.0,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                      color: widget.tabbackgroundColor,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: index ==
                                                  widget.tabsList.length - 1
                                              ? const Radius.circular(17.0)
                                              : const Radius.circular(0.0))),
                                ),
                              ]),
                        ),
                        Expanded(child: widget.tabsList[index].widget)
                      ]),
                    ],
                  )),
            )
          ]),
        ));
  }
}

class ChromeTab {
  final Widget widget;
  final String title;

  ChromeTab({
    required this.widget,
    required this.title,
  });
}
