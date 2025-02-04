import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String title;
  final String author;
  final String price;
  final String imageUrl;

  const Book({
    required this.title,
    required this.author,
    required this.price,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl, width: 80, height: 120, fit: BoxFit.cover),
            const SizedBox(width: 10),
            Expanded( // Prevents overflow
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), softWrap: true),
                  Text("by $author", style: TextStyle(fontSize: 16, color: Colors.grey), softWrap: true),
                  Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green)),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Add to Cart"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
