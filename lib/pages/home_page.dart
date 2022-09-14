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
            padding: EdgeInsets.only(top: 10, bottom: 10,left: 10),
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
              userImage: 'assets/images/user_1.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_1.jpeg'),
          makeFeed(
              userName: "User Two",
              userImage: 'assets/images/user_2.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_2.jpeg'),
          makeFeed(
              userName: "User Two",
              userImage: 'assets/images/user_3.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_3.jpeg'),
          makeFeed(
              userName: "User Two",
              userImage: 'assets/images/user_4.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_4.jpeg'),
          makeFeed(
              userName: "User Two",
              userImage: 'assets/images/user_5.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_5.jpeg'),
          makeFeed(
              userName: "User Two",
              userImage: 'assets/images/user_1.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_1.jpeg'),
          makeFeed(
              userName: "User Two",
              userImage: 'assets/images/user_2.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_2.jpeg'),
          makeFeed(
              userName: "User Two",
              userImage: 'assets/images/user_3.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_3.jpeg'),
          makeFeed(
              userName: "User Two",
              userImage: 'assets/images/user_4.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_4.jpeg'),
          makeFeed(
              userName: "User Two",
              userImage: 'assets/images/user_5.jpeg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the repeat predefined',
              feedImage: 'assets/images/user_5.jpeg'),
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

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // #header
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              feedTime,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  feedText,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[800],
                      height: 1.5,
                      letterSpacing: .7),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          // #photo
          Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // #likes
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "2.5K",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
                Text(
                  '400 Comments',
                  style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(isActive: false),
              makeShareButton(isActive: false),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(Icons.thumb_up, size: 14, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(Icons.favorite, size: 14, color: Colors.white),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey),
            SizedBox(
              width: 5,
            ),
            Text(
              'Like',
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.comment,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Comment',
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeShareButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Comment',
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
