import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:route_task_flutter/Data/DataSource/DataSource.dart';
import 'package:route_task_flutter/Domain/Entities/ProductEntity.dart';
import 'package:route_task_flutter/Domain/Repository/Repository.dart';

import '../Model/ProductModel.dart';

class RepositoryImplemntation implements Repository{
  Data productData;
  RepositoryImplemntation({required this.productData});
  @override
  fetchProducts() async{
    try{
      dynamic response = await productData.fetchProducts();
      List<ProductEntity> dataList = [];

      if(response.statusCode == 200){
        var data = response.data["products"] as List;
        for(var e in data){
          dataList.add(ProductModel.fromApi(e));
        }
        return dataList;
      }
    }on DioException catch(e){
      return e.response!.statusCode.toString();
    }



}}