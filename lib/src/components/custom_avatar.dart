import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  String? image;
  CustomAvatar({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: const Color.fromARGB(255, 232, 231, 231),
      backgroundImage:
          image != null && image != "" ? NetworkImage(image!) : null,
      child: image == null || image == ""
          ? const Icon(
              Icons.person,
              size: 40,
            )
          : null,
    );
  }
}
