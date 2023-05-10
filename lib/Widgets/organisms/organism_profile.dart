import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_store_item.dart';
import 'package:pet_sitting_project/Widgets/molecules/molecule_message_block.dart';

class OrganismProfile extends StatefulWidget {
  const OrganismProfile({super.key});

  @override
  State<OrganismProfile> createState() => _OrganismProfileState();
}

class _OrganismProfileState extends State<OrganismProfile> {
  final _space = const SizedBox(
    height: 30,
  );
  @override
  Widget build(BuildContext context) {
    const space = SizedBox(
      height: 10,
    );
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 26),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              //backgroundImage: AssetImage("assets/profile_image.jpg"),
              child: Icon(
                Icons.perm_identity,
                size: 80,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Software Engineer',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Edit Profile'),
              onPressed: () {
                // Add functionality to navigate to the edit profile page
              },
            ),
          ],
        ),
      ),
    );
  }
}
