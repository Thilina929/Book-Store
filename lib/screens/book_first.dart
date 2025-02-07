import 'package:flutter/material.dart';
import '../widgets/book.dart';

class BookFirstScreen extends StatelessWidget {
  const BookFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Book Store")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Book(
                title: 'Flutter for Beginners',
                author: 'John Doe',
                coverImageUrl: 'assets/images/Book_01.jpg',
                price: '\$19.99',
                onBuyPressed: () {
                  print('Book purchased!');
                },
              ),
              const SizedBox(height: 20),
              Book(
                title: 'Dart in Action',
                author: 'Chris Buckett',
                coverImageUrl: 'assets/images/Book_02.jpg',
                price: '\$24.99',
                onBuyPressed: () {
                  print('Book purchased!');
                },
              ),
              const SizedBox(height: 20),
              Book(
                title: 'Mastering Flutter',
                author: 'Jane Smith',
                coverImageUrl: 'assets/images/Book_03.jpg',
                price: '\$29.99',
                onBuyPressed: () {
                  print('Book purchased!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

