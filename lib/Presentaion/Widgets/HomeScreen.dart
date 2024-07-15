import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route_task_flutter/Presentaion/Pages/ProductList.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage("assets/images/routeTitle.png"),
        ),
      ),
      body: ProductList(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex =value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: currentIndex == 0
                  ? const CircleAvatar(

                  backgroundColor: Colors.white,
                  child: ImageIcon(
                    AssetImage("assets/bottomNavBarIcons/home.png"),

                  ))
                  : const ImageIcon(
                AssetImage("assets/bottomNavBarIcons/home.png"),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 1
                  ? const CircleAvatar(

                  backgroundColor: Colors.white,
                  child: ImageIcon(
                    AssetImage("assets/bottomNavBarIcons/menu.png"),
                  ))
                  : const ImageIcon(
                AssetImage("assets/bottomNavBarIcons/menu.png"),
              ),
              label: "Menu",
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 2
                  ? const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ImageIcon(
                    AssetImage("assets/bottomNavBarIcons/fav.png"),

                  ))
                  : const ImageIcon(
                AssetImage("assets/bottomNavBarIcons/fav.png"),

              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 3
                  ? const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ImageIcon(
                    AssetImage("assets/bottomNavBarIcons/profile.png"),
                  ))
                  : const ImageIcon(
                AssetImage("assets/bottomNavBarIcons/profile.png"),
              ),
              label: "Home",
            ),

          ],
        ),
      ),
    );
  }
}
