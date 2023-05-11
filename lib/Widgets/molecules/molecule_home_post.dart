import 'package:flutter/material.dart';
import 'package:pet_sitting_project/constants/constants_colors.dart';

class MoleculeHomePost extends StatefulWidget {
  const MoleculeHomePost(
      {super.key,
      required this.name,
      required this.description,
      required this.profileImage,
      required this.likes,
      required this.postImage});

  final String profileImage;
  final String postImage;
  final String name;
  final String description;
  final String likes;

  @override
  State<MoleculeHomePost> createState() => _MoleculeHomePostState();
}

class _MoleculeHomePostState extends State<MoleculeHomePost> {
  bool _likedPost = false;
  int _likes = 0;

  @override
  void initState() {
    _likes = int.parse(widget.likes);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, bottom: 5, right: 10),
            child: Row(
              children: [
                _profileImage,
                const SizedBox(
                  width: 5,
                ),
                _nameAndDescription,
              ],
            ),
          ),
          _post,
          Container(
            margin: const EdgeInsets.only(left: 10, top: 5),
            child: Row(
              children: [
                _likeButton,
                const SizedBox(
                  width: 5,
                ),
                _numberOfLikes,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _profileImage {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: ConstantColors.gray,
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(image: AssetImage(widget.profileImage)),
      ),
    );
  }

  Widget get _nameAndDescription {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          widget.description,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }

  Widget get _post {
    return Container(
      width: double.infinity,
      height: 275,
      decoration: BoxDecoration(
        color: ConstantColors.gray,
        image: DecorationImage(image: AssetImage(widget.postImage)),
      ),
    );
  }

  Widget get _likeButton {
    return GestureDetector(
      onTap: _onClickLike,
      child: !_likedPost
          ? const Icon(Icons.favorite_border_outlined)
          : const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
    );
  }

  Widget get _numberOfLikes {
    return Text(_likes.toString());
  }

  _onClickLike() {
    setState(() {
      _likedPost = !_likedPost;
      if (_likedPost) {
        _likes++;
      } else {
        _likes--;
      }
    });
  }
}
