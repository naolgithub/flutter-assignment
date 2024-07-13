import 'package:assignment/banner_slider.dart';
import 'package:assignment/best_reviewer_list.dart';
import 'package:assignment/custom_class.dart';
import 'package:assignment/footer.dart';
import 'package:assignment/review_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text('LOGO'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 5),
              child: CustomSearchBar(),
            ),
            const SizedBox(height: 24),
            const BannerSlider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('제일 핫한 리뷰를 만나보세요'),
                          Text(
                            '리뷰 랭킹⭐top 3',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        width: 104,
                        height: 104,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                            color: const Color.fromRGBO(206, 206, 206, 1),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 5.0,
                                  top: 5,
                                ),
                                child: Image.asset('assets/crownOne.png'),
                              ),
                            ),
                            Image.asset('assets/LEDOne.png'),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: ReviewItem(
                          title: 'LG전자 스탠바이미 27ART10AKPL (...',
                          rating: 4.89,
                          reviews: 216,
                          descriptionOne: '화면을 이동할 수 있고 전환도 편리하다는...',
                          descriptionTwo: '스탠바이미는 사랑입니다!️',
                          otherDescriptionOne: 'LG전자',
                          otherDescriptionTwo: '편리성',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 104,
                        height: 104,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                            color: const Color.fromRGBO(206, 206, 206, 1),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 5.0,
                                  top: 5,
                                ),
                                child: Image.asset('assets/crownTwo.png'),
                              ),
                            ),
                            Image.asset('assets/LEDTwo.png'),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: ReviewItem(
                          title: 'LG전자  울트라HD 75UP8300KNA (...',
                          rating: 4.77,
                          reviews: 143,
                          descriptionOne: '화면 잘 나오고... 리모컨 기능 좋습니다...',
                          descriptionTwo: '넷플 아마존 등 버튼하나로 바로 접속 되고...',
                          otherDescriptionOne: 'LG전자',
                          otherDescriptionTwo: '고화질',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 104,
                        height: 104,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                            color: const Color.fromRGBO(206, 206, 206, 1),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                  top: 5,
                                ),
                                child: Image.asset('assets/crownThree.png'),
                              ),
                            ),
                            Image.asset('assets/smartTv.png'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: ReviewItem(
                          title: '라익미 스마트 DS4001L NETRANGE...',
                          rating: 3.98,
                          reviews: 98,
                          descriptionOne: '반응속도 및 화질이나 여러면에서도 부족함...',
                          descriptionTwo: '중소기업TV 라익미 제품을 사용해보았는...',
                          otherDescriptionOne: '라익미',
                          otherDescriptionTwo: '가성비',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('골드 계급 사용자들이예요'),
                          Text(
                            '베스트 리뷰어 🏆 Top10',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  BestReviewerList(),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: '카테고리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이페이지',
          ),
        ],
      ),
    );
  }
}
