import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey[900],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.grey[900],
          ),
        ],
      ),
      body: ListView(
        children: [
          // post create
          Container(
            color: Colors.white,
            height: 120,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/user_5.jpeg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 46,
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey[500]!,
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "What's on your mind?",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_call,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Live'),
                        ],
                      )),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey[300],
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Photo'),
                        ],
                      )),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey[300],
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Check in'),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // create stories
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 200,
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(
                    storyImage: 'assets/images/feed_1.jpeg',
                    userImage: 'assets/images/feed_1.jpeg',
                    userName: 'NoName'),
                makeStory(
                    storyImage: 'assets/images/feed_2.jpeg',
                    userImage: 'assets/images/feed_2.jpeg',
                    userName: 'NoName'),
                makeStory(
                    storyImage: 'assets/images/feed_3.jpeg',
                    userImage: 'assets/images/feed_3.jpeg',
                    userName: 'NoName'),
                makeStory(
                    storyImage: 'assets/images/feed_4.jpeg',
                    userImage: 'assets/images/feed_4.jpeg',
                    userName: 'NoName'),
                makeStory(
                    storyImage: 'assets/images/feed_5.jpeg',
                    userImage: 'assets/images/feed_5.jpeg',
                    userName: 'NoName'),
                makeStory(
                    storyImage: 'assets/images/feed_1.jpeg',
                    userImage: 'assets/images/feed_1.jpeg',
                    userName: 'NoName'),
                makeStory(
                    storyImage: 'assets/images/feed_2.jpeg',
                    userImage: 'assets/images/feed_2.jpeg',
                    userName: 'NoName'),
                makeStory(
                    storyImage: 'assets/images/feed_3.jpeg',
                    userImage: 'assets/images/feed_3.jpeg',
                    userName: 'NoName'),
                makeStory(
                    storyImage: 'assets/images/feed_4.jpeg',
                    userImage: 'assets/images/feed_4.jpeg',
                    userName: 'NoName'),
                makeStory(
                    storyImage: 'assets/images/feed_5.jpeg',
                    userImage: 'assets/images/feed_5.jpeg',
                    userName: 'NoName'),

              ],
            ),
          ),

          // post feed
          makeFeed(
            userName: "User Two",
            userImage:'assets/images/user_2.jpeg',
            feedTime: '1 hr ago',
            feedText: 'All the Lorem Ipsum generators on the repeat predefined'
          )
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(
                      image: AssetImage(userImage),
                    )),
              ),
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName,userImage,feedTime,feedText,FeedImage}){
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              color: Column(
                children: [
                  SizedBox(height: 10,),
Row(
  children: [
    Container(
      width: 50,
      height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          im
        ),
    )
  ],
)
                ],
              ),
            )
          ],
        ),
    )
  }
}
