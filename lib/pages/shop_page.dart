import 'package:flutter/material.dart';
import 'package:third_flutter/components/shoe_tile.dart';
import 'package:third_flutter/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Shoe> shoeData = Shoe.getShoeData();
    return Column(
      children: [
        // search bar
        Container(
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(7),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              Icon(Icons.search),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "Everyone flies.. some fly longer than others.",
            style: TextStyle(color: Colors.grey[700], fontSize: 12),
          ),
        ),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 3,
                children: [
                  Text(
                    "Hot Picks",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red[600],
                    size: 30,
                  ),
                ],
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        //list of shoes
        SizedBox(
          height: 450,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // when you use Axis.horizontal, your flutter child must have width property
            itemCount: shoeData.length,
            itemBuilder: (context, index) => ShoeTile(shoe: shoeData[index]),
          ),
        ),
      ],
    );
  }
}
