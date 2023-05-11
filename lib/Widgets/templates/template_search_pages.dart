
import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_pet_sitter_block.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_search_bar.dart';

class TemplateSearchPages extends StatefulWidget {
  const TemplateSearchPages({super.key, required this.body, required this.hasShuffle});

  final bool hasShuffle;

  final Widget body;
  @override
  State<TemplateSearchPages> createState() => _TemplateSearchPagesState();
}

class _TemplateSearchPagesState extends State<TemplateSearchPages> {

  Widget _content = SizedBox();
  bool isShufflePage = false;

  @override
  void initState() {
    _content = widget.body;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(child: ListView(
            children: [
              MoleculeSearchBar(hasShuffle: widget.hasShuffle, onShuffle: _shuffleFunction,),
              const SizedBox(height: 20,),
             _content,
            ],
          )),
         
        ],
      ),
    );
  }

  _shuffleFunction(){
    setState(() {
      if(widget.hasShuffle && !isShufflePage){
        _content = Column(
          children: _petSitterList(),
      );

      }
      if(isShufflePage){
        _content = widget.body;
      }

      isShufflePage = !isShufflePage;

    });
   
  }
  _petSitterList(){
    return [
      const MoleculePetSitterBlock(name: "Leonardo Freitas", age: "22", likes: "30", image: "assets/images/leonardo.jpeg",),
      const MoleculePetSitterBlock(name: "Leonardo Freitas", age: "22", likes: "30", image: "assets/images/leonardo.jpeg",),
      const MoleculePetSitterBlock(name: "Leonardo Freitas", age: "22", likes: "30", image: "assets/images/leonardo.jpeg",),
    ];
  }
}