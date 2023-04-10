import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final int likes;
  final int comments;
  final String name;
  final String location;
  final String avatarImg;
  final String imageUrl;

  const Post({
    Key? key,
    required this.likes,
    required this.comments,
    required this.name,
    required this.location,
    required this.avatarImg,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: ListTile(
          leading: ClipOval(
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Image.network(
                avatarImg,
              ),
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            location,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          trailing: const Icon(Icons.more_vert),
        ),
      ),
      footer: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(Icons.favorite_border_outlined),
            SizedBox(width: 10),
            Text('$likes'),
            SizedBox(width: 5),
            Container(
              width: 1,
              height: 12,
              color: Colors.grey,
            ),
            SizedBox(width: 5),
            Icon(Icons.chat_bubble_outline_outlined),
            SizedBox(width: 10),
            Text('$comments'),
            SizedBox(width: 5),
            Container(
              width: 1,
              height: 12,
              color: Colors.grey,
            ),
            SizedBox(width: 5),
            Icon(Icons.send_outlined),
            SizedBox(width: 10),
            Text('Share'),
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
