import 'package:flutter/material.dart';
import '../models/photo.dart';
import 'home_page.dart'; 

class DetailPage extends StatelessWidget {
  final Photo photo;

  const DetailPage({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3, 
            child: Container(
              color: Colors.black12, 
              child: InteractiveViewer(
                child: Image.asset(photo.imageUrl, fit: BoxFit.contain), 
              ),
            ),
          ),
Container(
            color: Colors.white,
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  photo.title,
                  style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w900, color: Colors.black, height: 1.1),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                      decoration: BoxDecoration(
                        color: HomePage.accentColor.withOpacity(0.15), // Warna aksen Teal yang transparan
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: HomePage.accentColor.withOpacity(0.3)), // Border halus
                      ),
                      child: Text(
                        photo.category.toUpperCase(),
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: HomePage.accentColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
            
                Card(
                  elevation: 2,
                  shadowColor: Colors.black12,
                  color: Colors.grey[50],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: HomePage.accentColor, // Warna aksen
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Kreator / Fotografer', style: TextStyle(fontSize: 12, color: Colors.grey)),
                            const SizedBox(height: 2),
                            Text(photo.photographer, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Spacer bawah
              ],
            ),
          ),
        ],
      ),
    );
  }
}