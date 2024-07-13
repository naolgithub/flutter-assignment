
import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  final String title;
  final double rating;
  final int reviews;
  final String descriptionOne;
  final String descriptionTwo;
  final String otherDescriptionOne;
  final String otherDescriptionTwo;
  const ReviewItem({
    super.key,
    required this.title,
    required this.rating,
    required this.reviews,
    required this.descriptionOne,
    required this.otherDescriptionOne,
    required this.otherDescriptionTwo,
    required this.descriptionTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 106,
        width: 216,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 14),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      const Text(
                        '⚫',
                        style: TextStyle(fontSize: 5),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        descriptionOne,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      const Text(
                        '⚫',
                        style: TextStyle(fontSize: 5),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        descriptionTwo,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color.fromRGBO(248, 211, 86, 1),
                  ),
                  Text(rating.toString(),
                      style: const TextStyle(
                        color: Color.fromRGBO(248, 211, 86, 1),
                      )),
                  Text('($reviews)'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.5),
                    child: Container(
                      width: 44,
                      height: 21,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(240, 240, 240, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Text(
                        otherDescriptionOne,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.5),
                    child: Container(
                      width: 44,
                      height: 21,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(240, 240, 240, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Text(
                        otherDescriptionTwo,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

