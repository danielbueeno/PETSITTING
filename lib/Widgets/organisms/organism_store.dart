import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_store_item.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrganismStore extends StatefulWidget {
  const OrganismStore({super.key});

  @override
  State<OrganismStore> createState() => _OrganismStoreState();
}

class _OrganismStoreState extends State<OrganismStore> {
  @override
  Widget build(BuildContext context) {
    const space = SizedBox(
      height: 10,
    );
    return Container(
      height: 550,
      child: ListView(
        children: [
          SlidableWidget(
              molecule: MoleculeStoreItem(
            title: "Dog food",
            description: "Bag: 10 kg",
            price: "14,49",
            image: "assets/images/dog-food.png",
          )),
          space,
          SlidableWidget(
              molecule: MoleculeStoreItem(
            title: "Cat collar",
            description: "Unique size",
            price: "3,99",
            image: "assets/images/cat-collar.png",
          )),
          space,
          SlidableWidget(
              molecule: MoleculeStoreItem(
            title: "Cat food",
            description: "Bag: 5 kg",
            price: "8,99",
            image: "assets/images/dog-food.png",
          )),
          space,
          SlidableWidget(
              molecule: MoleculeStoreItem(
            title: "Dog toy",
            description: "Washable, color: green",
            price: "5,49",
            image: "assets/images/dog-food.png",
          )),
          space,
          SlidableWidget(
              molecule: MoleculeStoreItem(
            title: "Cat collar",
            description: "Lupi Linx, unique size",
            price: "3,99",
            image: "assets/images/dog-food.png",
          )),
        ],
      ),
    );
  }
}

class SlidableWidget extends StatelessWidget {
  const SlidableWidget({
    super.key,
    required this.molecule,
  });

  final MoleculeStoreItem molecule;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // Specify a key if the Slidable is dismissible.
      key: const ValueKey(1),

      // The start action pane is the one at the left or the top side.
      startActionPane: const ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: ScrollMotion(),

        // All actions are defined in the children parameter.
        children: [
          // A SlidableAction can have an icon and/or a label.
          SlidableAction(
            onPressed: null,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          SlidableAction(
            onPressed: null,
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: Icons.share,
            label: 'Share',
          ),
        ],
      ),

      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: const [
          SlidableAction(
            // An action can be bigger than the others.
            flex: 2,
            onPressed: null,
            backgroundColor: Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.archive,
            label: 'Archive',
          ),
          SlidableAction(
            onPressed: null,
            backgroundColor: Color(0xFF0392CF),
            foregroundColor: Colors.white,
            icon: Icons.save,
            label: 'Save',
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: molecule,
    );
  }
}
