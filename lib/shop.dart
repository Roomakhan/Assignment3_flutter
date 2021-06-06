import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text("Ecom App UI", style: TextStyle(color: Colors.black))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            products("IPhone 12", "iphone12.jpg"),
            products("Note 20 Ultra", "Note20Ultra.jpg"),
            products("Macbook Air", "Macbook Air.jpg"),
            products("Macbook Pro", "Macbook Pro.jpg"),
            products("Gaming PC", "GamingPC.jpg"),
            products("Backlite Keyboard", "backlit-keyboards.jpg"),
            products("Mercedes", "mercedes.jpg"),
            products("Mutton", "mutton.jpg"),
            products("Roadster", "roadster.jpg"),
            products("Royal Field", "royal field.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget products(String name, String img) {
  return Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[400]),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          width: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/$img",)
          ),
        ),
        SizedBox(width:10),
        Container(
          child: Column(
           
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Text(name,style: TextStyle(fontSize: 18, height: 1.5, fontWeight: FontWeight.bold),),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 13.0,
                    color: Colors.yellow,
                  ),
                  Text(
                      "5.0 (23 Reviews)",
                      style: TextStyle(
                        fontSize: 14,
                        height: 2,
                      ),
                    ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "20 Pieces",
                    style: TextStyle(
                      fontSize: 14,
                      height: 2,
                    ),
                  ),
                  Text(
                    r"  $90",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 16,
                        height: 2,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "Quantity: 1",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
