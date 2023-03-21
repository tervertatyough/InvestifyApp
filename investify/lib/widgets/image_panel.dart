import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImagePanel extends StatefulWidget {
  const ImagePanel({super.key});

  @override
  State<ImagePanel> createState() => _ImagePanelState();
}

class _ImagePanelState extends State<ImagePanel> {
  final controller = PageController(viewportFraction: 1, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        10,
        (index) => Container(
              height: 300,
              width: double.maxFinite,
              color: Colors.teal,
              child: Image.network(
                "https://picsum.photos/200/300",
                fit: BoxFit.cover,
              ),
            ));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 230,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              itemCount: pages.length,
              itemBuilder: (_, index) {
                return pages[index];
                // pages[index % pages.length]
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            child: SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: const ExpandingDotsEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.teal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
