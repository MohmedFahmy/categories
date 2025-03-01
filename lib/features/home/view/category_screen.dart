import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_api_app/features/cubit/products_cubit.dart';
import 'package:second_api_app/features/cubit/states.dart';
import 'package:second_api_app/features/home/widget/success_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.endPoint, required this.categoryName});
  final String endPoint;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(endPoint: endPoint)..getDataCubit(),
      child: Scaffold(
        appBar: AppBar(title: Text(categoryName)),
        body: BlocBuilder<ProductsCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductSuccess) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  return SuccessWidget(productsModel: state.products[index]);
                },
              );
            }

            return SizedBox();
          },
        ),
      ),
    );
  }
}
