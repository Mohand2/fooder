import 'package:flutter/material.dart';
import 'package:fooder/fooderlisch_theme.dart';

class Card2 extends StatelessWidget {
  final String imgUrl = 'assets/card2_img.png';
  final String profileImageUrl = 'assets/person_katz.jpeg';

  final String name = 'Mike Katz';
  final String username = 'Smoothie Connaisur';
  final String vType = 'Smoothies';
  final String btmText = 'Recipe';
  const Card2({super.key});

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
            image: AssetImage(
              imgUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(profileImageUrl),
              ),
              title: Text(name),
              subtitle: Text(username),
              trailing: IconButton(
                icon: const Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  const snackbar = SnackBar(
                    content: Text('Liked Item.'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 50,
                    left: 10,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        vType,
                        style: FooderlichTheme.lightTextTheme.headline6,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Text(
                      btmText,
                      style: FooderlichTheme.lightTextTheme.headline2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
