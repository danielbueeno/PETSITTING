import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_store_item.dart';


class OrganismStore extends StatefulWidget {
  const OrganismStore({super.key});

  @override
  State<OrganismStore> createState() => _OrganismStoreState();
}

class _OrganismStoreState extends State<OrganismStore> {

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(height: 10,);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: const [
          MoleculeStoreItem(
            title: "Dog food",
            description: "Continente, pack. 10 kg",
            price: "14,49",
            image: "assets/images/dog-food.png",
          ),
          space,
          MoleculeStoreItem(
            title: "Cat collar",
            description: "Lupi Linx, unique size",
            price: "3,99",
            image: "assets/images/cat-collar.png",
          ),
          space,
          MoleculeStoreItem(
            title: "Aquarium",
            description: "Anivite, 7l",
            price: "11,99",
            image: "assets/images/aquarium.png",
            boxFit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}