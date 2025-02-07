import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String title;
  final String author;
  final String coverImageUrl;
  final String price;
  final VoidCallback onBuyPressed;

  const Book({
    Key? key,
    required this.title,
    required this.author,
    required this.coverImageUrl,
    required this.price,
    required this.onBuyPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          author,
          style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Image.network(
          coverImageUrl,
          height: 300,
          width: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.center, // Ensures Row is centered
          child: Row(
            mainAxisSize: MainAxisSize.min, // Ensures row takes minimal space
            children: [
              Text(
                price,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 16), // Adds spacing between price and button
              ElevatedButton(
                onPressed: onBuyPressed,
                child: const Text('Add to Cart'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

