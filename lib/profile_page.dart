import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String imageUrl;
  final String name;
  const ProfilePage({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String dropdownValue = '최신순';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(29, 29, 29, 1),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Column(
            children: [
              Text(
                '랭킹 1위',
                style: TextStyle(fontSize: 10),
              ),
              Text(
                '베스트 리뷰어',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(widget.imageUrl),
              ),
              const SizedBox(height: 10),
              Text(
                widget.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Vector.png',
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    '골드',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(248, 211, 86, 1)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 36,
                width: 267,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    '조립컴 업체를 운영하며 리뷰를 작성합니다.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 10,
                color: const Color.fromRGBO(240, 240, 240, 1),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '작성한 리뷰',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' 총 35개',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        underline: Container(
                          height: 2,
                          color: Colors.transparent,
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['최신순', '오래된순', '별점높은순', '별점낮은순']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 0,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    // border: Border.all(color: Colors.grey.shade300),
                    // borderRadius: BorderRadius.circular(10),
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 104,
                          height: 104,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Image.asset(
                            'assets/ryzenPicture.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AMD 라이젠 5 5600X 버미어',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '정품 멀티팩',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 35,
                                    color: Color.fromRGBO(248, 211, 86, 1),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 35,
                                    color: Color.fromRGBO(248, 211, 86, 1),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 35,
                                    color: Color.fromRGBO(248, 211, 86, 1),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 35,
                                    color: Color.fromRGBO(248, 211, 86, 1),
                                  ),
                                  Icon(Icons.star,
                                      size: 35,
                                      color: Color.fromRGBO(240, 240, 240, 1)),
                                  SizedBox(width: 5),
                                  Text(
                                    '4.07',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(widget.imageUrl),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  widget.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(248, 211, 86, 1),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(248, 211, 86, 1),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(248, 211, 86, 1),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(248, 211, 86, 1),
                                  ),
                                  Icon(Icons.star,
                                      color: Color.fromRGBO(240, 240, 240, 1)),
                                  SizedBox(width: 5),
                                  Text(
                                    '2022.12.09',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          const Icon(
                            Icons.bookmark_border,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text('가격 저렴해요'),
                              SizedBox(
                                width: 15,
                              ),
                              Text('CPU온도 고온'),
                              SizedBox(
                                width: 15,
                              ),
                              Text('서멀작업 가능해요'),
                              SizedBox(
                                width: 15,
                              ),
                              Text('게임 잘 돌아가요'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.bolt,
                              color: Color.fromRGBO(62, 61, 197, 1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객'),
                                Text('님들에게도 추천 가능한 제품인 듯 합니다.'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.bolt,
                              color: Color.fromRGBO(215, 215, 215, 1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느'),
                                Text('낌 까지는 아닙니다.'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/profileImageOne.png',
                                  width: 293,
                                  height: 100,
                                ),
                                const SizedBox(width: 50),
                                const SizedBox(width: 5),
                              ],
                            ),
                          ),
                        ),
                        const Divider(thickness: 0),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          width: 25,
                          height: 25,
                          'assets/chat.png',
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 2.0),
                        const Text(
                          '댓글 달기',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Text(
                          '...',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
