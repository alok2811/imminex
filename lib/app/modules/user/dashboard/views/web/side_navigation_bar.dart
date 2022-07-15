import 'package:flutter/material.dart';
import 'package:imminex/base/colors.dart';

import '../../models/side_navigation_item.dart';


class SideNavigationBar extends StatelessWidget {
  final List<SideNavigationItem> items;
  final Function(int value)? onChanged;
  final Color backgroundColor;
  final double width;
  final double iconSize;
  final int selectedIndex;
  final Color selectedColor;
  final Color unselectedColor;
  final double lableFontSize;
  const SideNavigationBar(
      {Key? key,
      required this.onChanged,
      required this.items,
      this.backgroundColor = Colors.white,
      this.iconSize = 25,
      this.selectedIndex = 0,
      this.selectedColor = appPrimaryColor,
      this.unselectedColor = Colors.grey,
      this.lableFontSize = 12,
      this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: backgroundColor,
      duration: Duration(seconds: 1),
      child: Column(
   
        children: [
          ...List.generate(
              items.length,
              (index) => SizedBox(
                    width: width,
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        onChanged!(index);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column( //  padding: const EdgeInsets.only(top: 25, bottom: 25),
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                items[index].icon == null
                                    ? SizedBox.shrink()
                                    : Image.asset(items[index].icon!,
                                        height: iconSize,
                                        width: iconSize,
                                        color: selectedIndex == index
                                            ? selectedColor
                                            : unselectedColor),
                                Text(
                                  items[index].lable,
                                  style: TextStyle(
                                      fontSize: index == 0 ?20 :lableFontSize,
                                      fontWeight:index == 0 ? FontWeight.bold: FontWeight.normal,
                                      color: selectedIndex == index
                                          ? selectedColor
                                          : unselectedColor),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                              visible: !(index == items.length - 1),
                              child: Divider(
                                color: Colors.grey,
                                height: 0,
                                thickness: 0.2,
                                indent: 5,
                                endIndent: 5,
                              ))
                        ],
                      ),
                    ),
                  )),
          Spacer()
        ],
      ),
    );
  }
}
