import 'package:app/utils/color_lib.dart';
import 'package:app/views/pages/home_page.dart';
import 'package:app/views/pages/movies_page.dart';
import 'package:flutter/material.dart';



enum Menus { home, movies, streams, more }

final pages = [
  HomePage(),
  MoviesPage(),
  Center(
    child: Text("garage"),
  ),
  Center(
    child: Text("profile"),
  )
];

class BottomBar extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 80,
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () => onTap(Menus.home),
                    icon: Icon(
                      color: currentIndex == Menus.home
                          ? ColorLib.kPrimary
                          : Colors.black.withOpacity(0.3),
                      Icons.home_filled,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () => onTap(Menus.movies),
                    icon: Icon(
                      color: currentIndex == Menus.movies
                          ? ColorLib.kPrimary
                          : Colors.black.withOpacity(0.3),
                      Icons.video_call_rounded,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () => onTap(Menus.streams),
                    icon: Icon(
                      color: currentIndex == Menus.streams
                          ? ColorLib.kPrimary
                          : Colors.black.withOpacity(0.3),
                      Icons.live_tv_rounded,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () => onTap(Menus.more),
                    icon: Icon(
                      color: currentIndex == Menus.more
                          ? ColorLib.kPrimary
                          : Colors.black.withOpacity(0.3),
                      Icons.menu_sharp,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
