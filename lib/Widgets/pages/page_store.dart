import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/organisms/organism_store.dart';
import 'package:pet_sitting_project/widgets/templates/template_search_pages.dart';

class PageStore extends StatelessWidget {
  const PageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplateSearchPages(
      body: OrganismStore(),
    );
  }
}