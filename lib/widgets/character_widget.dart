import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/character.dart';
import 'dart:math';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 0: Usa widgets básicos que ya conoces para crear este widget/cell.
    // Algunos consejos útiles:
    // * No elimine el widget Container(), agregue todos sus widgets dentro. Recuerde que el widget Container
    //   tiene un solo hijo, pero su primer paso probablemente debería ser agregar un widget Row como ese hijo.
    // * Cargue imágenes con Image.asset (character.image, ...
    // * En el widget Container, siéntase libre de usar decoration:
    //   BoxDecoration (color: Colors.black12, borderRadius: BorderRadius.all (Radius.circular (20.0)))
    return Container(
      margin: const EdgeInsets.only(
        top: 8.0,
      ),
      decoration: BoxDecoration (color: Color.fromARGB(144, 226, 13, 13)),
      height: 200,
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Image.asset(character.image, width: 100),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.name,
                    style: const TextStyle(
                      fontSize: 30,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color((Random().nextDouble() * 0xFFFFFF)
                                      .toInt())
                                  .withOpacity(1.0),
                              shape: BoxShape.circle),
                          child: Text(
                            character.stars.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            character.jobTitle,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
