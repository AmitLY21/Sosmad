import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:social_network_demo/constants/constants.dart';
import 'package:social_network_demo/screens/home_page/tabs/DiscoverTab.dart';
import 'package:social_network_demo/screens/home_page/tabs/ExploreTab.dart';
import 'package:social_network_demo/widgets/CustomIconButton.dart';
import 'package:social_network_demo/widgets/StoryCard.dart';

import '../../widgets/CustomNavBar.dart';
import '../../widgets/CustomTabWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
    var faker = Faker();
    return Scaffold(
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Constants.bgColor,
        title: Text('Sosmad', style: Constants.titleTS),
        actions: [
          CustomIconButton(
              icon: Icons.notifications_outlined, onPressed: () {}),
          CustomIconButton(icon: Icons.message_outlined, onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              'Stories',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 175.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return StoryCard(
                  bgImage: faker.image.image(
                      width: 150,
                      height: 200,
                      keywords: [
                        'nature',
                        'city',
                        'beach',
                        'party',
                        'friends',
                        'animal',
                        'dogs',
                        'cats'
                      ],
                      random: true),
                  avatarImage: faker.image.image(
                      width: 100,
                      height: 100,
                      keywords: ['people', 'profile', 'avatar'],
                      random: true),
                  name: faker.person.firstName(),
                );
              },
            ),
          ),
          CustomTabWidget(
            tabNames: ['Explore', 'Discover'],
            tabPages: [
              ExploreTab(),
              DiscoverTab(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        initialIndex: 0,
      )

    );
  }
}
