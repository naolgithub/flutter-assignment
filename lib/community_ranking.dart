import 'package:flutter/material.dart';

class CommunityRanking extends StatelessWidget {
  final List<Map<String, String>> rankings = [
    {
      'image': 'assets/lg.png',
      'title': 'LG전자 처돌이들',
      'members': '407명',
      'description': '전하다에서 LG전자 많이 쓰는 사람 모여라~! 이 곳에서 궁금한 것이나 정보를 나눠봐요!'
    },
    {
      'image': 'assets/sumsung.png',
      'title': 'SAMSUNG 전자',
      'members': '334명',
      'description': '전하다에서 삼성전자 마니아들 모여라! 궁금한건 언제든지 물어보세요!'
    },
    {
      'image': 'assets/roundCup.png',
      'title': '테크매니아',
      'members': '275명',
      'description': '신제품은 빨리 써보는게 최고! 우리 같이 테크덕질 해요~!'
    }
  ];

  CommunityRanking({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rankings.length,
      itemBuilder: (context, index) {
        return CommunityItem(
          image: rankings[index]['image']!,
          title: rankings[index]['title']!,
          members: rankings[index]['members']!,
          description: rankings[index]['description']!,
        );
      },
    );
  }
}

class CommunityItem extends StatelessWidget {
  final String image;
  final String title;
  final String members;
  final String description;

  const CommunityItem({
    super.key,
    required this.image,
    required this.title,
    required this.members,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: Image.asset(image, width: 40, height: 40),
        title: Text(title + members),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Text(description),
          ],
        ),
      ),
    );
  }
}
