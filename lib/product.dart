import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
            Container(
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'Username',
                  suffixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 25, top: 10),
                child: Text(
                  "History",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
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
            )
          ],
        ),
      ),
    );
  }
}

Widget products(String name, String img) {
  return Container(
    margin: EdgeInsets.only(left:8,right:8),
    child: ListTile(
      visualDensity: VisualDensity(horizontal:0, vertical: -4),
      leading: CircleAvatar(
        radius: 20,
          backgroundImage: AssetImage("assets/$img")),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Row(
        children: [
          const Icon(
            Icons.star,
            size: 10.0,
            color: Colors.yellow,
          ),
          Padding(
            padding: EdgeInsets.only(left: 7),
            child: Text(
              "5.0 (23 Reviews)",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
      trailing: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top:10),
            child: Text(r"$10"),
          ),
        ],
      ),
    ),
  );
}
