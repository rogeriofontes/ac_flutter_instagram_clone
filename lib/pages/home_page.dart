import 'package:ac_flutter_instagram_clone/widgets/cards/card_post.dart';
import 'package:ac_flutter_instagram_clone/widgets/images/avatar_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Image.asset(
          'assets/images/instagramlogo.png',
          height: 100,
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.messenger)),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: const [
                      AvatarImage(
                        urlImage:
                            'https://static.cdn.pleno.news/2021/02/Keanu-Reeves.jpg',
                        isLive: true,
                        isStores: false,
                      ),
                      AvatarImage(
                        urlImage:
                            'https://static.cdn.pleno.news/2021/02/Keanu-Reeves.jpg',
                        isLive: false,
                        isStores: true,
                      ),
                      AvatarImage(
                        urlImage:
                            'https://static.cdn.pleno.news/2021/02/Keanu-Reeves.jpg',
                        isLive: false,
                        isStores: false,
                      ),
                      AvatarImage(
                        urlImage:
                            'https://static.cdn.pleno.news/2021/02/Keanu-Reeves.jpg',
                        isLive: false,
                        isStores: false,
                      ),
                      AvatarImage(
                        urlImage:
                            'https://static.cdn.pleno.news/2021/02/Keanu-Reeves.jpg',
                        isLive: false,
                        isStores: false,
                      ),
                      AvatarImage(
                        urlImage:
                            'https://static.cdn.pleno.news/2021/02/Keanu-Reeves.jpg',
                        isLive: false,
                        isStores: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const PostCard();
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(size: 28),
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video_outlined), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/1079023?v=4'),
                    maxRadius: 14,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: 3,
                    height: 3,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  )
                ],
              ),
              label: '')
        ],
      ),
    );
  }
}
