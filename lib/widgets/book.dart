import 'package:flutter/material.dart';
import 'package:my_mid_project/widgets/single_book.dart';

class Book extends StatelessWidget {
  final String title;
  final String author;
  final String coverImageUrl;
  final String price;
  final VoidCallback onBuyPressed;

  const Book({
    super.key,
    required this.title,
    required this.author,
    required this.coverImageUrl,
    required this.price,
    required this.onBuyPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: GestureDetector(
          onTap: () {
            // Navigate to BookDetailsPage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SingleBook(
                  coverImagePath: coverImageUrl,
                  title: title,
                  author: author,
                  price: price,
                ),
              ),
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                author,
                style:
                    const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Image.asset(
                coverImageUrl,
                height: 300,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.center, // Ensures Row is centered
                child: Row(
                  mainAxisSize:
                      MainAxisSize.min, // Ensures row takes minimal space
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                        width: 16), // Adds spacing between price and button
                    ElevatedButton(
                      onPressed: onBuyPressed,
                      child: const Text('Add to Cart'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
