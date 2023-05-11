import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_home_post.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_pet_sitter_block.dart';

class OrganismHome extends StatefulWidget {
  const OrganismHome({super.key});

  @override
  State<OrganismHome> createState() => _OrganismHomeState();
}

class _OrganismHomeState extends State<OrganismHome> {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: _postsList()
    );
  }

  _postsList(){
    return const [
          MoleculeHomePost(name: "Daniel Bueno",description: "some random description",profileImage: "assets/images/daniel.jpeg",postImage: "", likes: "10",),
          MoleculeHomePost(name: "Luís Oliveira",description: "some random description",profileImage: "assets/images/luis.jpeg",postImage: "", likes: "20",),
          MoleculeHomePost(name: "André Silva",description: "some random description",profileImage: "assets/images/andre.jpeg",postImage: "", likes: "30",),
    ];
  }
    
}