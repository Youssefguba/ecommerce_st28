import 'package:dio/dio.dart';
import 'package:ecommerce_st28_second/models/category_model.dart';

final dio = Dio();

Future<void> getProducts() async {
  final response = await dio.get('https://student.valuxapps.com/api/products?category_id=40');
  print(response);
}


Future<CategoryModel> getCategories() async {
  final response = await Dio().get('https://student.valuxapps.com/api/categories');
  print(response);
  final category = CategoryModel.fromJson(response.data);
  return category;
}

// DON'T DO THIS AT HOME...
void main() async {
  final data = await getCategories();
}
