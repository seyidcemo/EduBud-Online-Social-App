import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class user extends StatefulWidget {
  const user({super.key});

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/apple.jpeg',
          width: 150,
        ),
        Container(
          width: 300,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: const Center(
            child: Text(
              'Name/SureName',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: 300,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: const Center(
            child: Text(
              'Mail(taken from SheerID)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 250,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                'Change',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RatingBar.builder(
          initialRating: 3.5,
          minRating: 1,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(
            horizontal: 4.0,
          ),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        const Text(
          'LEVEL 10',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Specialization:Maths',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          '(This is somekind of loyalty and reputation system)',
          maxLines: 2,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
