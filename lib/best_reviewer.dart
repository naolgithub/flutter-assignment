
import 'package:assignment/profile_page.dart';
import 'package:flutter/material.dart';

class BestReviewer extends StatelessWidget {
  final String name;
  final String imageUrl;

  const BestReviewer({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfilePage(
              name: name,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: SizedBox(
        height: 90,
        width: 62,
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
            ),
            const SizedBox(height: 10),
            Text(name),
          ],
        ),
      ),
    );
  }
}

