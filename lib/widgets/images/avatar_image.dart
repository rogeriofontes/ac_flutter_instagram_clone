import 'package:flutter/material.dart';

class AvatarImage extends StatefulWidget {
  final String urlImage;
  final bool isLive;
  final bool isStores;

  const AvatarImage(
      {Key? key,
      required this.urlImage,
      required this.isLive,
      required this.isStores})
      : super(key: key);

  @override
  State<AvatarImage> createState() => _AvatarImageState();
}

class _AvatarImageState extends State<AvatarImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 197, 130, 5),
                Color.fromARGB(255, 216, 5, 170)
              ],
              begin: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(100),
            color: Colors.red[300],
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(widget.urlImage),
          ),
        ),
        widget.isLive
            ? SizedBox(
                //Container do AoVivo
                width: 100,
                height: 100,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      'Ao Vivo',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox(
                width: 1,
              ),
        widget.isStores
            ? SizedBox(
                height: 100,
                width: 100,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ))),
                ),
              )
            : const SizedBox(
                width: 1,
              ),
      ],
    );
  }
}
