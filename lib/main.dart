import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Importante para usar Get en el futuro
import 'screens/movie_list_screen.dart'; 
import 'screens/character_list_screen.dart'; // Nueva pantalla de GraphQL

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Usamos GetMaterialApp en lugar de MaterialApp porque estamos usando GetX
    return GetMaterialApp(
      title: 'Entertainment Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entertainment Discovery'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.hub_outlined, size: 100, color: Colors.deepPurple),
            const SizedBox(height: 40),
            
            // BOTÓN PARA REST
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
              onPressed: () {
                Get.to(() => const MovieListScreen()); // Navegación con GetX
              },
              icon: const Icon(Icons.movie),
              label: const Text('Explorar Películas (REST)', style: TextStyle(fontSize: 18)),
            ),
            
            const SizedBox(height: 20),
            
            // BOTÓN PARA GRAPHQL
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(20)),
              onPressed: () {
                Get.to(() => const CharacterListScreen()); // Navegación con GetX
              },
              icon: const Icon(Icons.face),
              label: const Text('Explorar Personajes (GraphQL)', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}