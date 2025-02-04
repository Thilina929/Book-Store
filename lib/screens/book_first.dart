import 'package:flutter/material.dart';
import '../widgets/book.dart';

class BookFirstScreen extends StatelessWidget {
  const BookFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book Store")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Book(title: "MANDODARI", author: "MOHAN RAJH MADAWALA", price: "\$29.99", imageUrl: "assets/images/Book_01.jpg"),
            Book(title: "LOVINA", author: "MOHAN RAJH MADAWALA", price: "\$34.99", imageUrl: "assets/images/Book_02.jpg"),
            Book(title: "CAMELLIA", author: "VIRAJINI THENNAKON", price: "\$39.99", imageUrl: "assets/images/Book_03.jpg"),

          ],
        ),
      ),
    );
  }
}
