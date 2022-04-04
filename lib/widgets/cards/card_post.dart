import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  State<PostCard> createState() => _PostState();
}

class _PostState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static.cdn.pleno.news/2021/02/Keanu-Reeves.jpg'),
                ),
              ),
              const Text(
                'Keanu Reeves',
                style: TextStyle(color: Colors.white),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ))
            ],
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://coodesh.com/blog/wp-content/uploads/2021/10/mobile-flutter-1-1152x648.jpg',
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 10, 0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_outline_rounded))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Text(
              '489 curtidas',
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Row(
              children: [
                const Text(
                  'duhalonsoo ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Expanded(
                  child: Text(
                    'Modular traz um padrão pré estabelecido de módulos e submodulos.',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'mais ',
                  style: TextStyle(color: Colors.grey[300]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Text(
              'ver todos os 43 comentários ',
              style: TextStyle(color: Colors.grey[300]),
            ),
          ),
        ],
      ),
    );
  }
}
