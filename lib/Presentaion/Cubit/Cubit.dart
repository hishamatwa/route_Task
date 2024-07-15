import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task_flutter/Data/Network/ApiManger.dart';
import 'package:route_task_flutter/Presentaion/Cubit/states.dart';

import '../../Data/DataSource/ApiData.dart';
import '../../Data/DataSource/DataSource.dart';
import '../../Data/Model/ProductModel.dart';
import '../../Data/Repository_Implementation/Repository_Implemntation.dart';
import '../../Domain/Repository/Repository.dart';

class ProductsCubit extends Cubit<States>{
  ProductsCubit():super(LoadingState());

  final ApiManger _services = ApiManger();
  late Data dataSource;
  late Repository repo;
  // getData() async{
  //
  //   emit(LoadingState());
  //   dataSource = Apidata(_services.freeDio);
  //   repo = RepositoryImplemntation(productData: dataSource);
  //   var result = await repo.fetchProducts();
  //
  //
  //   return result.fold(
  //           (fail){
  //         emit(ErrorStates());
  //         return Future.value(false);
  //       }
  //       ,
  //           (data){
  //         emit(SuccessState(data));
  //         return Future.value(true);
  //       });
  // }
  getData() async {
    try {
      emit(LoadingState());
      dataSource = Apidata(_services.freeDio);
      repo = RepositoryImplemntation(productData: dataSource);
      print('Fetching products...');
      var result = await repo.fetchProducts();
      print('Products fetched: $result');
      emit(SuccessState(result));
    } catch (e) {
      print('Error fetching products: $e');
      emit(ErrorStates());
    }
  }

}