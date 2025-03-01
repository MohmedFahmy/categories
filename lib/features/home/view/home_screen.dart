import 'package:flutter/material.dart';
import 'package:second_api_app/features/home/view/category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Category')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:
                        (context) => CategoryScreen(
                          endPoint: 'men\'s%20clothing',
                          categoryName: 'Men',
                        ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlueAccent,
                ),
                width: 150,
                height: 150,

                child: Center(
                  child: Text(
                    'Men',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:
                        (context) => CategoryScreen(
                          endPoint: 'women\'s%20clothing',
                          categoryName: 'Women',
                        ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pinkAccent,
                ),
                width: 150,
                height: 150,

                child: Center(
                  child: Text(
                    'Women',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:
                        (context) => CategoryScreen(
                          endPoint: 'electronics',
                          categoryName: 'Electronics',
                        ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 150,
                height: 150,

                child: Center(
                  child: Text(
                    'Electronics',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:
                        (context) => CategoryScreen(
                          endPoint: 'jewelery',
                          categoryName: 'Jewelery',
                        ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 150,
                height: 150,

                child: Center(
                  child: Text(
                    'Jewelery',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
