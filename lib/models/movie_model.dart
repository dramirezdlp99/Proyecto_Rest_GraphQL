class Movie {
  final int id;
  final String title;
  final String imageUrl;
  final String summary;

  Movie({
    required this.id, 
    required this.title, 
    required this.imageUrl, 
    required this.summary
  });

  // Factory constructor para mapear el JSON de la API
  factory Movie.fromJson(Map<String, dynamic> json) {
    // La API de TVMaze devuelve la info dentro de un nodo 'show'
    final show = json['show'];
    
    return Movie(
      id: show['id'] ?? 0,
      title: show['name'] ?? 'No Title',
      imageUrl: show['image']?['medium'] ?? 'https://via.placeholder.com/150',
      summary: show['summary']?.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), '') ?? 'Sin descripción',
    );
  }
}