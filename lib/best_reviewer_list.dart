import 'package:assignment/best_reviewer.dart';
import 'package:flutter/material.dart';

class BestReviewerList extends StatelessWidget {
  const BestReviewerList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BestReviewer(name: 'Name01', imageUrl: 'assets/catOne.png'),
          SizedBox(width: 5),
          BestReviewer(name: 'Name02', imageUrl: 'assets/catTwo.png'),
          SizedBox(width: 5),
          BestReviewer(name: 'Name03', imageUrl: 'assets/catThree.png'),
          SizedBox(width: 5),
          BestReviewer(name: 'Name04', imageUrl: 'assets/catFour.png'),
          SizedBox(width: 5),
          BestReviewer(name: 'Name05', imageUrl: 'assets/catFive.png'),
          SizedBox(width: 5),
          BestReviewer(name: 'Name06', imageUrl: 'assets/catSix.png'),
          SizedBox(width: 5),
          BestReviewer(name: 'Name07', imageUrl: 'assets/catSeven.png'),
          SizedBox(width: 5),
          BestReviewer(name: 'Name08', imageUrl: 'assets/catEight.png'),
          SizedBox(width: 5),
          BestReviewer(name: 'Name09', imageUrl: 'assets/catNine.png'),
          SizedBox(width: 5),
          BestReviewer(name: 'Name10', imageUrl: 'assets/catTen.png'),
        ],
      ),
    );
  }
}
