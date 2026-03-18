import 'package:flutter/material.dart';
import '../models/photo.dart';
import 'detail_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Photo> searchResults = [];

  void _runFilter(String enteredKeyword) {
    List<Photo> results = [];
    if (enteredKeyword.isEmpty) {
      results = [];
    } else {
      results = dummyDatabase
          .where((photo) => photo.category.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.black12,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100], 
            borderRadius: BorderRadius.circular(20), 
          ),
          child: TextField(
            onChanged: (value) => _runFilter(value),
            autofocus: true,
            style: const TextStyle(fontSize: 14),
            decoration: InputDecoration(
              hintText: 'Cari kategori (contoh: wisuda, travel)...',
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              suffixIcon: searchResults.isNotEmpty ? IconButton(icon: const Icon(Icons.clear, size: 18), onPressed: () => setState(() { searchResults = []; })) : null,
            ),
          ),
        ),
      ),
      body: searchResults.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.manage_search, size: 60, color: Colors.black12),
                  SizedBox(height: 16),
                  Text('Ketik kategori untuk mencari', style: TextStyle(color: Colors.grey)),
                ],
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(12.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                final photo = searchResults[index];
                return GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(photo: photo))),
                  child: Card(
                    elevation: 3,
                    shadowColor: Colors.black26,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(photo.imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                );
              },
            ),
    );
  }
}