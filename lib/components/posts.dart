import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/components/social_button.dart';

class Posts extends StatelessWidget {
  const Posts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.rri.res.in/sites/default/files/2022-09/Abhisek%20Tamang.jpg"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: "John Mobbin",
                              children: [
                                TextSpan(
                                    text: " added a new ",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    )),
                                TextSpan(
                                  text: "reel",
                                )
                              ],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Row(
                          children: [
                            Text(
                              "Just Now",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              FontAwesomeIcons.music,
                              size: 13,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              FontAwesomeIcons.earthAsia,
                              size: 13,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  FontAwesomeIcons.ellipsis,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  FontAwesomeIcons.x,
                  color: Colors.grey,
                  size: 20,
                ),
              ],
            ),
          ),
          Image.network(
            "https://www.rri.res.in/sites/default/files/2022-09/Abhisek%20Tamang.jpg",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "4.5k",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Text("."),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  FontAwesomeIcons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Give",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey, thickness: 1),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SocialButton(
                  icon: FontAwesomeIcons.thumbsUp,
                  text: "Like",
                ),
                SocialButton(
                  icon: FontAwesomeIcons.comment,
                  text: "Comment",
                ),
                SocialButton(
                  icon: FontAwesomeIcons.share,
                  text: "Share",
                ),
              ],
            ),
          ),
          Divider(
            thickness: 8,
            color: Colors.grey.withOpacity(0.4),
          ),
        ],
      ),
    );
  }
}
