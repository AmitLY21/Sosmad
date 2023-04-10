import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:social_network_demo/constants/constants.dart';
import 'package:social_network_demo/widgets/CustomNavBar.dart';
import 'package:social_network_demo/widgets/CustomTabWidget.dart';
import 'package:social_network_demo/widgets/ScatteredImages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2, // number of tabs
      vsync: this, // the SingleTickerProviderStateMixin
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var rnd = Random();
    var faker = Faker();
    return Scaffold(
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        backgroundColor: Constants.bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(faker.image.image(
                    width: 200,
                    height: 200,
                    keywords: ['profile pic'],
                    random: true)),
              ),
              SizedBox(height: 10),
              Text(
                faker.person.name(),
                style: Constants.profileNameTS,
              ),
              SizedBox(height: 5),
              Text(
                faker.job.title(),
                style: Constants.subtitleTS,
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Constants.bgColor,
              border: Border.all(color: Colors.white),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(rnd.nextInt(200).toString(),
                          style: Constants.subtitleTS),
                      Text('Posts', style: Constants.subtitleTS),
                    ],
                  ),
                  Column(
                    children: [
                      Text(rnd.nextInt(1000).toString(),
                          style: Constants.subtitleTS),
                      Text('Followers', style: Constants.subtitleTS),
                    ],
                  ),
                  Column(
                    children: [
                      Text(rnd.nextInt(800).toString(),
                          style: Constants.subtitleTS),
                      Text('Following', style: Constants.subtitleTS),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          CustomTabWidget(tabNames: [
            'Post',
            'Video'
          ], tabPages: [
            ScatteredImages(),
            Container(child: Icon(Icons.video_call , color: Colors.white))
          ])
        ],
      ),
    );
  }
}
