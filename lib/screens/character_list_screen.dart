import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/character_controller.dart';

class CharacterListScreen extends StatelessWidget {
  const CharacterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Inicializamos el controlador de GetX
    final CharacterController controller = Get.put(CharacterController());

    return Scaffold(
      appBar: AppBar(title: const Text('Personajes (GraphQL API)')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        
        return ListView.builder(
          itemCount: controller.characterList.length,
          itemBuilder: (context, index) {
            final character = controller.characterList[index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(character.image)),
                title: Text(character.name),
                subtitle: Text('Especie: ${character.species}'), // Texto en español
              ),
            );
          },
        );
      }),
    );
  }
}