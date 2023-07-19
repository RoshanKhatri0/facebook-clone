import 'package:flutter/material.dart';

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
                          width: 11,
                        ),
                        StoryItem(),
                        SizedBox(
                          width: 11,
                        ),
                        StoryItem(),
                        SizedBox(
                          width: 11,
                        ),
                        StoryItem(),
                      ],
                    ),
                    Text("data1"),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

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
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
