import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fooder/fooderlisch_theme.dart';

class Card3 extends StatelessWidget {
  final String imgUrl = "assets/card3_img.png";
  final String title = 'Recipe Trends';

  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tags = [
      "Healthy",
      "Vegan",
      "Carrots",
      "Greens",
      "Wheat",
      "Pescetarian",
      "Mint",
      "Lemongrass",
      "Salad",
      "Water",
    ];

    return Center(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
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
              image: AssetImage(
                imgUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child:
                    Text(title, style: FooderlichTheme.darkTextTheme.headline2),
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 15),
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 6,
                      runSpacing: 12,
                      children: tags
                          .map(
                            (tag) => Chip(
                              label: Text(
                                tag,
                                style: FooderlichTheme.darkTextTheme.bodyText2,
                              ),
                              backgroundColor: const Color.fromARGB(82, 0, 0, 0)
                                  .withOpacity(0.7),
                              // avatar: Icon(Icons.delete),
                            ),
                          )
                          .toList(),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
