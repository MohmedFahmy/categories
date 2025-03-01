import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:second_api_app/features/project/data/model/products_model.dart';

class ProductData {
  getProductData({required String category}) async {
    var response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$category'),
    );
    List jsonBody = jsonDecode(response.body);
    List<ProductsModel> products =
        jsonBody.map((e) => ProductsModel.fromJson(e)).toList();

    return products;
  }
}
