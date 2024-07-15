import 'package:dio/dio.dart';
import 'package:route_task_flutter/Data/DataSource/DataSource.dart';
import 'package:route_task_flutter/Data/Model/ProductModel.dart';
import 'package:route_task_flutter/Data/Network/ApiManger.dart';

class Apidata implements Data{
  Dio dio;
  Apidata(this.dio);

  @override
  fetchProducts() async{
    return await dio.get("https://dummyjson.com/products");
  }


}