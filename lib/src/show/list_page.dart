import 'package:flutter/material.dart';
import 'package:potter_api/src/show/list_controller.dart';
import 'package:potter_api/src/show/list_repository.dart';

import '../components/custom_avatar.dart';
import '../components/custom_subtitle.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ListController controller = ListController(repository: ListRepository());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 231, 231),
      appBar: AppBar(title: const Text("H.Potter Api")),
      body: SafeArea(
          child: Center(
        child: FutureBuilder(
          future: controller.getCharacters(),
          builder: ((context, snapshot) {
            if (!snapshot.hasData && !snapshot.hasError) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return (Text(
                  "Erro:snapshot.hasErro ${snapshot.error.toString()}"));
            }
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 4),
                        child: ListTile(
                          leading:
                              CustomAvatar(image: snapshot.data![index].image),
                          title: Text(
                            snapshot.data![index].name,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 6, 3, 190),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: CustomSubtitle(
                              subtitle: snapshot.data![index].house),
                        ),
                      ),
                    ),
                  );
                });
          }),
        ),
      )),
    );
  }
}
