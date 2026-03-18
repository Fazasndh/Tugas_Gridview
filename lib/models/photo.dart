class Photo {
  final String id;
  final String imageUrl;
  final String title;
  final String category;
  final String photographer;

  Photo({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.category,
    required this.photographer,
  });
}


final List<Photo> dummyDatabase = [
  // Wisuda
  Photo(id: 'w1', imageUrl: 'assets/images/W1.jpg', title: 'Wisudawati', category: 'wisuda', photographer: 'Flown Studio'),
  Photo(id: 'w2', imageUrl: 'assets/images/W2.jpg', title: 'Toga dan Harapan Masa Depan', category: 'wisuda', photographer: 'Flown Studio'),
  Photo(id: 'w3', imageUrl: 'assets/images/W3.jpg', title: 'Wisuda Bersama Keluarga', category: 'wisuda', photographer: 'Flown Studio'),
  
  // Pernikahan
  Photo(id: 'p1', imageUrl: 'assets/images/P1.jpg', title: 'Pengantin & Keluarga', category: 'pernikahan', photographer: 'Flown Studio'),
  Photo(id: 'p2', imageUrl: 'assets/images/P2.jpg', title: 'Pernikahan Adat Jawa', category: 'pernikahan', photographer: 'Flown Studio'),
  Photo(id: 'p3', imageUrl: 'assets/images/P3.jpg', title: 'Menuntun ke Imam', category: 'pernikahan', photographer: 'Flown Studio'),

  // Keluarga
  Photo(id: 'k1', imageUrl: 'assets/images/K1.jpg', title: 'Hangatnya Kumpul Keluarga', category: 'keluarga', photographer: 'Flown Studio'),
  Photo(id: 'k2', imageUrl: 'assets/images/K2.jpg', title: 'Lebaran di Kampung', category: 'keluarga', photographer: 'Flown Studio'),
  Photo(id: 'k3', imageUrl: 'assets/images/K3.jpg', title: 'Senyum yang Lepas', category: 'keluarga', photographer: 'Flown Studio'),

  // Alam 
  Photo(id: 'a1', imageUrl: 'assets/images/A1.jpg', title: 'Gunung & Perdesaan', category: 'alam', photographer: 'Flown Studio'),
  Photo(id: 'a2', imageUrl: 'assets/images/A2.jpg', title: 'Rumah di Tengah Bukit', category: 'alam', photographer: 'Flown Studio'),
  Photo(id: 'a3', imageUrl: 'assets/images/A3.jpg', title: 'Danau di Pagi Hari', category: 'alam', photographer: 'Flown Studio'),

  // Travel 
  Photo(id: 't1', imageUrl: 'assets/images/T1.jpg', title: 'Traveling Bersama', category: 'travel', photographer: 'Flown Studio'),
  Photo(id: 't2', imageUrl: 'assets/images/T2.jpg', title: 'Ide Foto Traveling Sendiri', category: 'travel', photographer: 'Flown Studio'),
  Photo(id: 't3', imageUrl: 'assets/images/T3.jpg', title: 'Pose Foto Travel Bersama Teman', category: 'travel', photographer: 'Flown Studio'),
];