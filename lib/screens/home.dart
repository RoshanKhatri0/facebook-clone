import 'package:flutter/material.dart';

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
            child: IconButton(
              icon: Icon(Icons.add, color: Colors.black),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            backgroundColor:
                Color.fromARGB(255, 121, 120, 120).withOpacity(0.4),
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            backgroundColor:
                Color.fromARGB(255, 121, 120, 120).withOpacity(0.4),
            child: IconButton(
              icon: Icon(Icons.message, color: Colors.black),
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
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.rri.res.in/sites/default/files/2022-09/Abhisek%20Tamang.jpg"),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Whats's on your mind?",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(
                  Icons.photo,
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
                                          style: TextStyle(fontSize: 17),
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
                                            child: Icon(Icons.add, size: 28),
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
                    Text("data1"),
                  ],
                ),
              ),
              Divider(
                thickness: 8,
                color: Colors.grey.withOpacity(0.4),
              ),
              Container(
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
                                        Icons.music_note,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.people,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(Icons.add),
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
                            Icons.heart_broken,
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
                            Icons.stars,
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
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.abc),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Like"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
