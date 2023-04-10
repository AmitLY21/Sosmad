import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network_demo/constants/constants.dart';

class CustomTabWidget extends StatefulWidget {
  final List<String> tabNames;
  final List<Widget> tabPages;

  CustomTabWidget({required this.tabNames, required this.tabPages});

  @override
  _CustomTabWidgetState createState() => _CustomTabWidgetState();
}

class _CustomTabWidgetState extends State<CustomTabWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: widget.tabNames.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.blueAccent,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                labelStyle: Constants.subtitleTS,
                tabs: widget.tabNames
                    .map((name) => Tab(
                  text: name,
                ))
                    .toList(),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: widget.tabPages,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
