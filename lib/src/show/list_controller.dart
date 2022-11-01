import 'package:potter_api/src/show/list_repository.dart';

class ListController {
  final ListRepository repository;
  ListController({required this.repository});
  Future<List> getCharacters() async {
    final response = await repository.getCharacters();
    return response;
  }
}
