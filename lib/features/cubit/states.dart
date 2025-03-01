import 'package:second_api_app/features/project/data/model/products_model.dart';

sealed class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final List<ProductsModel> products;
  ProductSuccess({required this.products});
}
