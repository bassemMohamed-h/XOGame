import 'package:flutter/material.dart';

class PostSection extends StatelessWidget {
  String post = '';
  String personName;

  PostSection({Key? key, required this.personName, this.post = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //Start Person Profile
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                )),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      personName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: const [Text('3h')],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.public_rounded,
                          size: 20,
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ), //End Person Profile
        Container(
            // Start Of Post
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            alignment: Alignment.centerLeft,
            child: Text(
              post,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            )), //End Of Post
        Container(
            //Start Of Number Of Likes & Comments
            margin: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Text('100'),
                SizedBox(
                  width: 5,
                ),
                Image(
                    image: AssetImage('assets/images/like.jpg'),
                    width: 40,
                    height: 20),
                Spacer(),
                Text('100'),
                SizedBox(
                  width: 5,
                ),
                Text('Comments')
              ],
            )), //End Of Number Of Likes & Comments
        Container(
          //Start Like && Comment
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: const BoxDecoration(
              border: Border(
            top: BorderSide(color: Colors.black26, width: 1.5),
            bottom: BorderSide(color: Colors.black26, width: 1.5),
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LikePost(
                name: 'Like',
                image: 'assets/images/singleLike.jpg',
              ),
              LikePost(
                name: 'Comment',
                image: 'assets/images/comment.jpg',
              ),
              LikePost(
                name: 'Share',
                image: 'assets/images/share.png',
              ),
            ],
          ),
        ) //End Of Like && Comment
        // End Of Posts Section
      ],
    );
  }
}

List<PostSection> posts = [
  PostSection(post: 'Post', personName: 'Owner'),
  PostSection(post: 'Post 1', personName: 'Owner1'),
  PostSection(post: 'Post 2', personName: 'Owner2'),
  PostSection(post: 'Post 3', personName: 'Owner3'),
  PostSection(post: 'Post 4', personName: 'Owner4'),
  PostSection(post: 'Post 5', personName: 'Owner5'),
];

class LikePost extends StatelessWidget {
  String name;
  String image;

  LikePost({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(EdgeInsets.all(10))),
      onPressed: () {},
      child: Row(
        children: [
          Image(image: AssetImage(image), width: 25, height: 25),
          const SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
