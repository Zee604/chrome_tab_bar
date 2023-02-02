import 'package:flutter/material.dart';

class ChromeTabBar extends StatefulWidget {
  final tabsList;
  final tabSelectedColor;
  final backgroundColor;
  final List<String> tabText;

  ChromeTabBar(
      {Key? key,
      required this.tabsList,
      required this.tabSelectedColor,
      required this.backgroundColor,
      required this.tabText})
      : super(key: key);

  @override
  State<ChromeTabBar> createState() => _ChromeTabBarState();
}

class _ChromeTabBarState extends State<ChromeTabBar> {
  int tIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Expanded(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: const Color(0xFFE6F1FE),
                ),
                child: Stack(
                  children: [
                    Container(
                      color: widget.backgroundColor,
                      width: double.infinity,
                      height: 35.0,
                    ),
                    Column(children: [
                      Container(
                        color: widget.backgroundColor,
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
                                  color: widget.backgroundColor,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: tIndex == 0
                                          ? const Radius.circular(17.0)
                                          : const Radius.circular(0.0))),
                            ),
                            Expanded(
                              child: InkWell(
                                hoverColor: Colors.transparent,
                                onTap: () {
                                  setState(() {
                                    tIndex = 0;
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: tIndex == 0
                                          ? widget.tabSelectedColor
                                          : widget.backgroundColor,
                                      borderRadius: BorderRadius.only(
                                          topRight: tIndex == 0
                                              ? const Radius.circular(17.0)
                                              : const Radius.circular(0.0),
                                          topLeft: tIndex == 0
                                              ? const Radius.circular(17.0)
                                              : const Radius.circular(0.0),
                                          bottomRight: tIndex == 1
                                              ? const Radius.circular(17.0)
                                              : const Radius.circular(0.0))),
                                  child: Text(
                                    widget.tabText[0],
                                    style: TextStyle(
                                        color: tIndex == 0
                                            ? widget.backgroundColor
                                            : Colors.grey,
                                        fontSize: 18.0),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: InkWell(
                              hoverColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  tIndex = 1;
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: tIndex == 1
                                        ? const Color(0xFFE6F1FE)
                                        : widget.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: tIndex == 1
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0),
                                        topLeft: tIndex == 1
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0),
                                        bottomLeft: tIndex == 0
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0),
                                        bottomRight: tIndex == 2
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0))),
                                child: Text(
                                  widget.tabText[1],
                                  style: TextStyle(
                                      color: tIndex == 1
                                          ? widget.backgroundColor
                                          : Colors.grey,
                                      fontSize: 18.0),
                                ),
                              ),
                            )),
                            Expanded(
                                child: InkWell(
                              hoverColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  tIndex = 2;
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: tIndex == 2
                                        ? const Color(0xFFE6F1FE)
                                        : widget.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: tIndex == 2
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0),
                                        topLeft: tIndex == 2
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0),
                                        bottomLeft: tIndex == 1
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0),
                                        bottomRight: tIndex == 3
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0))),
                                child: Text(
                                  widget.tabText[2],
                                  style: TextStyle(
                                      color: tIndex == 2
                                          ? widget.backgroundColor
                                          : Colors.grey,
                                      fontSize: 18.0),
                                ),
                              ),
                            )),
                            Expanded(
                                child: InkWell(
                              hoverColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  tIndex = 3;
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: tIndex == 3
                                        ? const Color(0xFFE6F1FE)
                                        : widget.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: tIndex == 3
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0),
                                        topLeft: tIndex == 3
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0),
                                        bottomLeft: tIndex == 2
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0),
                                        bottomRight: tIndex == 4
                                            ? const Radius.circular(17.0)
                                            : const Radius.circular(0.0))),
                                child: Text(
                                  widget.tabText[3],
                                  style: TextStyle(
                                      color: tIndex == 3
                                          ? widget.backgroundColor
                                          : Colors.grey,
                                      fontSize: 18.0),
                                ),
                              ),
                            )),
                            Expanded(
                                child: InkWell(
                              hoverColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  tIndex = 4;
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: tIndex == 4
                                      ? const Color(0xFFE6F1FE)
                                      : widget.backgroundColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: tIndex == 4
                                        ? const Radius.circular(17.0)
                                        : const Radius.circular(0.0),
                                    topLeft: tIndex == 4
                                        ? const Radius.circular(17.0)
                                        : const Radius.circular(0.0),
                                    bottomLeft: tIndex == 3
                                        ? const Radius.circular(17.0)
                                        : const Radius.circular(0.0),
                                  ),
                                ),
                                child: Text(
                                  widget.tabText[4],
                                  style: TextStyle(
                                      color: tIndex == 4
                                          ? widget.backgroundColor
                                          : Colors.grey,
                                      fontSize: 18.0),
                                ),
                              ),
                            )),
                            Container(
                              width: 50.0,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  color: widget.backgroundColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: tIndex == 4
                                          ? const Radius.circular(17.0)
                                          : const Radius.circular(0.0))),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: widget.tabsList[tIndex])
                    ]),
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
