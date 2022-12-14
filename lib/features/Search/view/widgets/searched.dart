import 'package:flutter/material.dart';

class SearchedItems extends StatelessWidget {
  final List searched;
  final int index;
  const SearchedItems({super.key, required this.searched, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 4),
      child: Container(
        color: Color.fromARGB(36, 158, 158, 158),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _leadimg(),
                _width8(),
                _searchtitle(size),
              ],
            ),
            _searchicon(),
          ],
        ),
      ),
    );
  }

  SizedBox _width8() {
    return const SizedBox(
      width: 8,
    );
  }

  Padding _searchicon() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: const Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    );
  }

  Container _searchtitle(Size size) {
    return Container(
      width: (size.width - 30) * 0.4,
      child: Text(
        searched[index]["title"],
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }

  Container _leadimg() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        searched[index]["img"],
        width: 130,
        fit: BoxFit.cover,
      ),
    );
  }
}
