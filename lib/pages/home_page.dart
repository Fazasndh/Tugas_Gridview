import 'package:flutter/material.dart';
import '../models/photo.dart';
import 'detail_page.dart';
import 'search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  static const accentColor = Color.fromRGBO(0, 150, 136, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1, 
        shadowColor: Colors.black12,
        centerTitle: true,
        title: const Text(
          'FlownStudio',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 93, 82), 
            fontWeight: FontWeight.w900, 
            fontSize: 24, 
            letterSpacing: -1
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 93, 82), shape: BoxShape.circle),
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage())),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          crossAxisSpacing: 8, 
          mainAxisSpacing: 8,
          childAspectRatio: 0.75,
        ),
        itemCount: dummyDatabase.length,
        itemBuilder: (context, index) {
          final photo = dummyDatabase[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(photo: photo)));
            },
            child: Card( 
              elevation: 3, 
              shadowColor: Colors.black26,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15), 
                child: Image.asset(
                  photo.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Center(child: Icon(Icons.broken_image, color: Colors.grey)), // Handle gambar error
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}