import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/components/reels_item.dart';
import 'package:practice/screens/create_story.dart';
import 'package:practice/screens/profile_page.dart';

import '../components/posts.dart';
import '../components/social_button.dart';
import '../components/story_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: Image.asset("assets/logo/facebook.png"),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor:
                Color.fromARGB(255, 121, 120, 120).withOpacity(0.4),
            child: PopupMenuButton<String>(
              icon: Icon(
                FontAwesomeIcons.plus,
                color: Colors.black,
              ),
              onSelected: (value) {
                Navigator.pushNamed(context, '/' + value.toLowerCase());
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'Posts',
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.penToSquare,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text('Posts'),
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem<String>(
                  value: 'Story',
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.bookOpen,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text('Story'),
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem<String>(
                  value: 'Reel',
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.clapperboard,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text('Reel'),
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem<String>(
                  value: 'Live',
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.video,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text('Live'),
                  ),
                ),
              ],
              offset: Offset(50, 53),
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            backgroundColor:
                Color.fromARGB(255, 121, 120, 120).withOpacity(0.4),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.black,
              ),
              onPressed: () async {
                final returnvalue = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePage(name: "Roshan khatri")),
                );
                print(returnvalue);
              },
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            backgroundColor:
                Color.fromARGB(255, 121, 120, 120).withOpacity(0.4),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProfilePage(name: "Profile page")));
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.rri.res.in/sites/default/files/2022-09/Abhisek%20Tamang.jpg"),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Whats's on your mind?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  FontAwesomeIcons.images,
                  color: Color.fromARGB(255, 156, 220, 83),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Divider(
                  thickness: 8,
                  color: Colors.grey.withOpacity(0.4),
                ),
                TabBar(
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontSize: 16),
                  controller: tabController,
                  unselectedLabelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  tabs: [
                    Tab(
                      text: "Stories",
                    ),
                    Tab(
                      text: "Reels",
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ListView(
                        padding: EdgeInsets.all(10),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color.fromARGB(77, 199, 199, 199),
                                border: Border.all(
                                  color: Colors.grey,
                                )),
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Image.network(
                                    "https://images.pexels.com/photos/17645273/pexels-photo-17645273/free-photo-of-fashion-people-woman-relaxation.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.symmetric(
                                                  vertical: 4),
                                          child: Text(
                                            "Create\n Story",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: -24,
                                        left: 40,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: CircleAvatar(
                                              child: IconButton(
                                                icon: Icon(
                                                  FontAwesomeIcons.plus,
                                                  size: 20,
                                                ),
                                                onPressed: () {
                                                  Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          CreateStory(),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ListView.separated(
                            itemBuilder: (context, index) => StoryItem(),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                            itemCount: 5,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                          ),
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.all(10),
                        scrollDirection: Axis.horizontal,
                        children: [
                          ListView.separated(
                            itemBuilder: (context, index) => ReelsItem(),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                            itemCount: 7,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 8,
                  color: Colors.grey.withOpacity(0.4),
                ),
                Posts(),
                Posts(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
