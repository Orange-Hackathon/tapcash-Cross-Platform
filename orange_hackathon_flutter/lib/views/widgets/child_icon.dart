import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChildIconForParent extends StatelessWidget {
  ChildIconForParent({
    Key? key,
    required this.childName,
    required this.childImage,
  }) : super(key: key);
  String? childName;
  String? childImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
              radius: 30,
              foregroundColor: Colors.lightBlueAccent,
              //AssetImage(childImage!),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            childName!,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
