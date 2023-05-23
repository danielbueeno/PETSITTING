import 'package:flutter/material.dart';
import 'package:pet_sitting_project/Constants/constant_routes.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_pet_sitter_block.dart';

class OrganismPetSitter extends StatelessWidget {
  const OrganismPetSitter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _petSitterList(context),
    );
  }

  _petSitterList(BuildContext context) {
    return [
      GestureDetector(
        onTap: () =>
            Navigator.pushNamed(context, ConstantRoutes.petSitterProfile),
        child: const MoleculePetSitterBlock(
          name: "Leonardo Freitas",
          age: "20",
          likes: "37",
          image: "assets/images/leonardo.jpeg",
        ),
      ),
      const MoleculePetSitterBlock(
        name: "André Silva",
        age: "35",
        likes: "12",
        image: "assets/images/andre.jpeg",
      ),
      const MoleculePetSitterBlock(
        name: "Luis Oliveira",
        age: "12",
        likes: "68",
        image: "assets/images/luis.jpeg",
      ),
    ];
  }
}
