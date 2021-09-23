import 'package:carousel_slider/carousel_slider.dart';
import 'package:day_1/more_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CarouselSlider(
              items: [
                Image.network(
                  'https://www.adventuredragon.com/wp-content/uploads/2018/07/Karang-Sanur-Beach-Bali-Indonesia-2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  ('https://www.madetotravel.ca/wp-content/uploads/2018/10/the-most-beautiful-places-in-bali-e1616378336920-1024x1024.jpg'),
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://www.thediscoveriesof.com/wp-content/uploads/2018/03/Bali-Itinerary-traveldestinations-bali-beautifulplaces-22.jpg.webp',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://www.indonesia.travel/content/dam/indtravelrevamp/en/trip-ideas/15-instagrammable-destination-s-you-must-visit-in-bali/8.jpg',
                  fit: BoxFit.cover,
                ),
              ],
              options: CarouselOptions(
                  height: size.height, autoPlay: true, viewportFraction: 1.0),
            ),
            Positioned(
              top: 500,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Discover Bali',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'The mere mention of Bali evokes \n thoughts of a paradise',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black38,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://www.indonesia.travel/content/dam/indtravelrevamp/en/trip-ideas/15-instagrammable-destination-s-you-must-visit-in-bali/8.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://www.madetotravel.ca/wp-content/uploads/2018/10/the-most-beautiful-places-in-bali-e1616378336920-1024x1024.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://www.thediscoveriesof.com/wp-content/uploads/2018/03/Bali-Itinerary-traveldestinations-bali-beautifulplaces-22.jpg.webp',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://www.indonesia.travel/content/dam/indtravelrevamp/en/trip-ideas/15-instagrammable-destination-s-you-must-visit-in-bali/8.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'More',
                          style: TextStyle(
                            color: Colors.amber.shade400,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 250,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.amber.shade400,
                          ),
                          onPressed: () => Navigator.of(context)
                              .pushNamed(MoreInfo.routeName),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
