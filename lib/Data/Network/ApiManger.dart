import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:route_task_flutter/Data/Model/ProductModel.dart';
import 'package:route_task_flutter/Domain/Entities/ProductEntity.dart';
import 'package:dio/dio.dart';
// class ApiService {
//   final String baseUrl = 'https://dummyjson.com/products';
//
//   static WebServices? _this;
//
//   factory WebServices() {
//     _this ??= WebServices._();
//     return _this!;
//   }
//
//   Dio freeDio = Dio();
//   Dio tokenDio = Dio();
//
//   String lang = "en";
//
//   // DeviceInformation deviceInformation = DeviceInformation();
//   // final String storageKeyMobileToken = "Authorization";
//
//   String? mytoken;
//   String mobile = "";
//   final String storageKeyMobileToken = "Authorization";
//
//   WebServices._() {
//     freeDio.options.connectTimeout = const Duration(milliseconds: 30000);
//     freeDio.options.baseUrl = Constants.baseURL;
//
//     tokenDio.options.connectTimeout = const Duration(milliseconds: 30000);
//     tokenDio.options.baseUrl = Constants.baseURL;
//     initializeInterceptors();
//   }
//
//
// // Future<List<dynamic>> fetchProducts() async {
//   //   final response = await http.get(Uri.parse(baseUrl));
//   //    List<ProductEntity> productsData = [];
//   //   if (response.statusCode == 200) {
//   //     var data = json.decode(response.body);
//   //     List products = data["products"];
//   //     for(var i in products){
//   //       productsData.add(ProductModel.fromApi(i));
//   //     }
//   //   } else {
//   //     throw Exception('Failed to load products');
//   //   }
//   //   return productsData;
//   // }
// }
class ApiManger {

  static ApiManger? _this;

  factory ApiManger() {
    _this ??= ApiManger._();
    return _this!;
  }

  Dio freeDio = Dio();
  Dio tokenDio = Dio();

  String lang = "en";

  // DeviceInformation deviceInformation = DeviceInformation();
  // final String storageKeyMobileToken = "Authorization";

  String? mytoken;
  String mobile = "";
  final String storageKeyMobileToken = "Authorization";

  ApiManger._() {
    freeDio.options.connectTimeout = const Duration(milliseconds: 30000);
    freeDio.options.baseUrl = "https://dummyjson.com";

    tokenDio.options.connectTimeout = const Duration(milliseconds: 30000);
    tokenDio.options.baseUrl = "https://dummyjson.com";

  }}