import 'package:flutter/material.dart';

class SevenApp extends StatefulWidget {
  const SevenApp({super.key});

  State<SevenApp> createState() => _SevenAppState();
}

class _SevenAppState extends State<SevenApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Core2Web",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.deepPurple,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_rounded),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.access_alarm_rounded)
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s"),
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555"),
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Image.network(
                    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943"),
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Image.network(
                  "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                  fit: BoxFit.fill,
                ),
                width: 150,
                height: 150,
                // color: Colors.amber,
                padding: EdgeInsets.all(20),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
