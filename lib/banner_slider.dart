import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      if (_pageController.hasClients) {
        int nextPage = (_pageController.page!.toInt() + 1) % 4;
        _pageController
            .animateToPage(
              nextPage,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            )
            .then((_) => _startAutoSlide());
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 221,
          child: PageView(
            controller: _pageController,
            children: [
              Image.asset('assets/slideTwo.png', fit: BoxFit.cover),
              Image.asset('assets/slideOne.png', fit: BoxFit.cover),
              Image.asset('assets/slideTwo.png', fit: BoxFit.cover),
              Image.asset('assets/slideFour.png', fit: BoxFit.cover),
            ],
          ),
        ),
        Positioned(
          bottom: 16.0, // Position the dots 16 pixels from the bottom
          left: 0,
          right: 0,
          child: Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 4,
              effect: const WormEffect(
                dotHeight: 8.0,
                dotWidth: 8.0,
                spacing: 16.0,
                dotColor: Colors.grey,
                activeDotColor: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
