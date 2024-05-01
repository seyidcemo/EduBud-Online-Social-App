import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                'images/news.png',
                width: 100,
              ),
            ],
          ),
          Container(
            width: 200,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: const Center(
              child: Text(
                'Erasmus buddy coming soon...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Favorites',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            child: ListView.builder(
                itemCount: homepagetext.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Container(
                      height: 60,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Center(
                          child: Text(
                        homepagetext[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

List<String> homepagetext = [
  'Mobile app programming',
  'Computer Network',
  'Computer Vision',
  'Math Metods',
];
