import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_api_app/features/cubit/states.dart';
import 'package:second_api_app/features/project/data/product_data/data.dart';

class ProductsCubit extends Cubit<ProductState> {
  ProductsCubit({required this.endPoint}) : super(ProductInitial());
  ProductData productData = ProductData();
  String endPoint ;
  getDataCubit() async {
    emit(ProductLoading());
    emit(
      ProductSuccess(
        products: await productData.getProductData(category: '$endPoint'),
      ),
    );
  }
}
