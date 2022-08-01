import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard(
      {Key? key, required this.storyImage, required this.personName})
      : super(key: key);
  final String storyImage;
  final String personName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60, // Start Style Of Story Card
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        // Start Story Card
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // Start Style Of Person Icon Card
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: CircleAvatar(
                child: IconButton(
              onPressed: () {}, // Start Person Icon Card
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 12,
              ),
              padding: EdgeInsets.zero,
            )),
          ), //End Of Person Icon Card
          Container(
              //Start bottom Text
              alignment: Alignment.center,
              child: Text(
                personName,
                style: const TextStyle(color: Colors.white),
              )),
        ],
      ), //End Story Card
    );
  }
}

List<StoryCard> items = const [
  StoryCard(storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner1'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner2'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner3'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner4'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner5'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner6'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner7'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner8'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner9'),
  StoryCard(
      storyImage: 'assets/images/facebookStory.jpg', personName: 'Owner10'),
];
