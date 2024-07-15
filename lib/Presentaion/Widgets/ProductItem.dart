

import 'package:flutter/material.dart';
import 'package:route_task_flutter/Core/Config/ApplicationTheme.dart';
class ProductItems extends StatelessWidget {
  String image;
  String name;
  String description;
  double price;
  dynamic sale;
  double reviews;

   ProductItems(
      {super.key,
        required this.image,
        required this.name,
        required this.description,
        required this.price,
        required this.sale,
        required this.reviews});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              decoration:const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                        color: Color(0xFF004182)),
                    left: BorderSide(
                        color: Color(0xFF004182)),
                    right: BorderSide(
                        color:
                        Color(0xFF004182))),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight:
                    Radius.circular(20)),
              ),
              width: size.width * 0.44,
              height: size.height * 0.154,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                child: Image.network(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: ImageIcon(
                        AssetImage("assets/bottomNavBarIcons/fav.png"),
                        color: Apptheme.primaryColor),
                  ),
                ))
          ],
        ),
        Container(
          width: size.width*0.44,
          height: size.height*0.178,
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Color(0xFF004182)),
                left: BorderSide(
                    color: Color(0xFF004182)),
                right: BorderSide(
                    color: Color(0xFF004182))),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.white,

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Apptheme.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                description,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color:  Apptheme.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Egp " + price.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Apptheme.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    sale.toString() + " Egp",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.blueGrey,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Reviews ($reviews)",
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Apptheme.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Icon(
                    Icons.star,
                    color: Color(0xFFF4B400),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.add_circle,
                      color: Apptheme.primaryColor,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}