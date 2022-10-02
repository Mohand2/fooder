import 'package:flutter/material.dart';

class CostumeCard extends StatelessWidget {
  final AssetImage imgUrl;
  const CostumeCard({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(10),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            image: imgUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
