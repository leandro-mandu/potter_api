import 'package:flutter/material.dart';
import 'package:potter_api/src/show/list_controller.dart';
import 'package:potter_api/src/show/list_repository.dart';

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
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor:
                                  const Color.fromARGB(255, 232, 231, 231),
                              backgroundImage:
                                  NetworkImage(snapshot.data![index].image),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snapshot.data![index].name,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 6, 3, 190),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                snapshot.data![index].house,
                              ),
                            ],
                          ),
                        ],
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
