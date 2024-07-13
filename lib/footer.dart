import 'package:assignment/custom_drop_down_button.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  late String dropdownValue = 'KOR';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      color: const Color.fromRGBO(238, 238, 238, 1),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'LOGO Inc.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('회사 소개 '),
                  Text('|'),
                  Text(' 인재 채용 '),
                  Text('|'),
                  Text(' 기술 블로그 '),
                  Text('|'),
                  Text(' 리뷰 저작권'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.send,
                        color: Color.fromRGBO(200, 200, 200, 1),
                      ),
                      Text('review@logo.com'),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomDropdownButton(),
                  ),
                ],
              ),
            ),
            Divider(),
            Text('©2022-2022 LOGO Lab, Inc. (주)아무개 서울시 강남구'),
          ],
        ),
      ),
    );
  }
}
