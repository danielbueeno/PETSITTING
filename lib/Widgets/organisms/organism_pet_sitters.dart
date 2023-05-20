

import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_pet_sitter_block.dart';

class OrganismPetSitter extends StatelessWidget {
  const OrganismPetSitter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: _petSitterList(),
      );
  }

  _petSitterList(){
    return [
      const MoleculePetSitterBlock(name: "Leonardo Freitas", age: "22", likes: "30", image: "assets/images/leonardo.jpeg",),
      const MoleculePetSitterBlock(name: "Leonardo Freitas", age: "22", likes: "30", image: "assets/images/leonardo.jpeg",),
      const MoleculePetSitterBlock(name: "Leonardo Freitas", age: "22", likes: "30", image: "assets/images/leonardo.jpeg",),
    ];
  }
}