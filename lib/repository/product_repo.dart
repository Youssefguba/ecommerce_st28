import 'package:dio/dio.dart';

class ProductRepo {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://student.valuxapps.com/api/',
    ),
  );

  Future<dynamic> getProducts(int id) async {
    final response = await dio.get('products?category_id=$id');
    return response.data['data']['data'];
  }

}