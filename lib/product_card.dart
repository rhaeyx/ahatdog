import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final num price;
  final num rating;
  final num ratingCount;
  final Color buttonColor;
  final String category;

  const ProductCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.price,
      required this.rating,
      required this.buttonColor,
      required this.category,
      required this.ratingCount});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(imageUrl, height: 120, fit: BoxFit.cover),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            FilterChip(
              label: Text(category),
              onSelected: (v) {},
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '\$' + price.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return Icon(
                      index < num.parse(rating.toStringAsFixed(2))
                          ? Icons.star
                          : Icons.star_border,
                      color: Colors.orange,
                      size: 18,
                    );
                  }),
                ),
                SizedBox(width: 5),
                Text(
                  rating.toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' (' + ratingCount.toString() + ')',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Buy Now'),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
