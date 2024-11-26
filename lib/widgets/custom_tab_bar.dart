import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  final List<String> tabTitles;
  final Color? indicatorColor;
  final Color? labelColor;
  final Color? unselectedLabelColor;

  const CustomTabBar({
    Key? key,
    required this.tabController,
    required this.tabTitles,
    this.indicatorColor = Colors.blue,
    this.labelColor = Colors.white,
    this.unselectedLabelColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
      ),
      child: TabBar(
        controller: tabController,
        tabs: tabTitles.map((title) => Tab(text: title)).toList(),
        indicatorColor: indicatorColor,
        indicatorSize: TabBarIndicatorSize.tab,
        labelPadding: EdgeInsets.zero,
        labelColor: labelColor,
        unselectedLabelColor: unselectedLabelColor,
      )
    );
  }
}
