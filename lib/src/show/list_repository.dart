import 'package:dio/dio.dart';
import 'package:potter_api/src/models/characters_model.dart';

class ListRepository {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://hp-api.herokuapp.com',
      headers: {
        'Content-type': 'application/json',
      },
    ),
  );

  Future<List> getCharacters() async {
    final response = await dio.get('/api/characters');

    if (response.statusCode == 200) {
      final characterList =
          response.data.map((e) => CharactersModel.fromMap(e)).toList();
      return characterList;
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
