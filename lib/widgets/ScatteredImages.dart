import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_network_demo/constants/constants.dart';

class ScatteredImages extends StatelessWidget {
  final List<String> images = [
    'https://picsum.photos/200/400?random=1',
    'https://picsum.photos/200/300?random=2',
    'https://picsum.photos/200/150?random=3',
    'https://picsum.photos/200/560?random=4',
    'https://picsum.photos/200/260?random=5',
    'https://picsum.photos/200/620?random=6',
    'https://picsum.photos/200/440?random=7',
    'https://picsum.photos/200/230?random=8',
    'https://picsum.photos/200/670?random=9',
    'https://picsum.photos/200/300?random=10',
  ];

  @override
  Widget build(BuildContext context) {
    var rnd = Random();
    var faker = Faker();
    return Scaffold(
      backgroundColor: Constants.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MasonryGridView.builder(
          itemCount: rnd.nextInt(30),
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                faker.image.image(
                    height: 200 + rnd.nextInt(500),
                    width: 200 + rnd.nextInt(480),
                    keywords: [
                      'nature',
                      'landscape',
                      'concerts',
                      'friends',
                      'love',
                      'drinking'
                    ],
                    random: true),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
