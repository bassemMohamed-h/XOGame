import 'package:facebook/post_section.dart';
import 'package:facebook/story_card.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({Key? key}) : super(key: key);

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FacebookLogin()));
            },
            icon: Icon(
              Icons.logout,
            ),
            tooltip: 'Logout',
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            //Start Stories Section
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              itemCount: items.length,
              itemBuilder: (context, index) => items[index],
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
            ),
          ), //End Of Stories Section
          //Start Posts Section
          SizedBox(
            height: 500,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: posts.length,
              itemBuilder: (context, index) => posts[index],
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
            ),
          )
          //End Of Posts Section
        ],
      ),
    );
  }
}
