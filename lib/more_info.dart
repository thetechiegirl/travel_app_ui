import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);
  static const routeName = '/more-info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 20, bottom: 100),
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.thediscoveriesof.com/wp-content/uploads/2018/03/Bali-Itinerary-traveldestinations-bali-beautifulplaces-22.jpg.webp'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Text(
              'Visit Bali',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Bali is an Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs. The island is home to religious sites such as cliffside Uluwatu Temple. To the south, the beachside city of Kuta has lively bars, while Seminyak, Sanur and Nusa Dua are popular resort towns. The island is also known for its yoga and meditation retreats',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(15),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.deepPurpleAccent,
                  ),
                ),
                child: const Text('Book a Holiday'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
