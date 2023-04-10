import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/Post.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    var rnd = Random();
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Post(
          likes: rnd.nextInt(300),
          comments: rnd.nextInt(100),
          name: faker.person.name(),
          location: faker.address.city(),
          avatarImg: faker.image.image(width: 100, height: 100, keywords: ['people', 'profile' , 'avatar'], random: true),
          imageUrl: faker.image.image(width: 300, height: 300, keywords: ['nature', 'city' , 'beach' , 'party', 'friends','animal','dogs' ,'cats'], random: true),
        );
      },
    );
  }
}
