import 'package:dfwfec/pages/drawer.dart';
import 'package:dfwfec/widgets/custom_app_bar.dart';
import 'package:dfwfec/widgets/custom_bottom_appbar.dart';
import 'package:dfwfec/widgets/custom_card.dart';
import 'package:dfwfec/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
       drawer:const DrawerX(),
        body: Column(
          children: [
          CustomAppBar(
            onAvatarTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          CustomTabBar (
            tabController: _tabController,
            tabTitles: ['Para ti', 'Siguiendo'],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) => TweetCard(),
                ),
                ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) => TweetCard(),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNav(onItemSelected: (index){}),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), 
        ),
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}