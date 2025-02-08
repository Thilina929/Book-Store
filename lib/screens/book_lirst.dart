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
                title: 'MANDODARI',
                author: 'MOHAN RAJ MADAWALA',
                coverImageUrl: 'assets/images/Book_01.jpg',
                price: '\Rs.1250',
                onBuyPressed: () {
                  print('Book purchased!');
                },
              ),
              const SizedBox(height: 20),
              Book(
                title: 'LOVINA',
                author: 'MOHAN RAJ MADAWALA',
                coverImageUrl: 'assets/images/Book_02.jpg',
                price: '\Rs. 950',
                onBuyPressed: () {
                  print('Book purchased!');
                },
              ),
              const SizedBox(height: 20),
              Book(
                title: 'CAMELLIA',
                author: 'VIRAJINI THENNAKON',
                coverImageUrl: 'assets/images/Book_03.jpg',
                price: '\Rs. 1150',
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

