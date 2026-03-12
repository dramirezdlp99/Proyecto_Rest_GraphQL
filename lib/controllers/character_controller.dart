import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../config/graphql_config.dart';
import '../models/character_model.dart';

class CharacterController extends GetxController {
  var isLoading = true.obs;
  var characterList = <Character>[].obs;

  @override
  void onInit() {
    fetchCharacters();
    super.onInit();
  }

  void fetchCharacters() async {
    try {
      isLoading(true);
      GraphQLClient client = GraphQlConfig.clientToQuery();

      // Esta es la consulta GraphQL (Query)
      const String query = r'''
        query {
          characters(page: 1) {
            results {
              id
              name
              image
              species
            }
          }
        }
      ''';

      QueryResult result = await client.query(QueryOptions(document: gql(query)));

      if (result.hasException) {
        print(result.exception.toString());
      } else {
        var list = result.data?['characters']['results'] as List;
        characterList.value = list.map((json) => Character.fromJson(json)).toList();
      }
    } finally {
      isLoading(false);
    }
  }
}