import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
          )),
      height: 100,
      width: 120,
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Image.network(
            "https://images.pexels.com/photos/17645273/pexels-photo-17645273/free-photo-of-fashion-people-woman-relaxation.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
          Positioned(
            top: 5,
            left: 5,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.rri.res.in/sites/default/files/2022-09/Abhisek%20Tamang.jpg"),
            ),
          ),
          Positioned(
            bottom: 9,
            left: 8,
            child: Text(
              "data ",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
