import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F1542062283%2Fchocolate-and-cream-layer-cake-1812-cover.jpg%3Fitok%3DrEWL7AIN',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1.0,
                      vertical: 30.0,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250.0,
                      child: Text(
                        "Coklat tiga rasa enak mantap lezat",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.pinkAccent,
                      size: 30.0,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: List<Widget>.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1. Bahan isian: aduk rata semua bahan lalu masak dalam panci sambil terus diaduk dengan api sedang hingga meletup-letup dan mengental. Sisihkan",
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Bahan isian: aduk rata semua bahan lalu masak dalam panci sambil terus diaduk dengan api sedang hingga meletup-letup dan mengental. Sisihkan",
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
