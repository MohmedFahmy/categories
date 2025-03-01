import 'package:flutter/material.dart';
import 'package:second_api_app/features/project/data/model/products_model.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({super.key, required this.productsModel});
  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Image.network(productsModel.image, height: 400),
            SizedBox(height: 20),
            Text(productsModel.title, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text(productsModel.description),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[400],
                minimumSize: Size(300, 50),
              ),
              onPressed: () {},
              child: Text('Buy'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
