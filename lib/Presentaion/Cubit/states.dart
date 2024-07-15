

import 'package:route_task_flutter/Data/Model/ProductModel.dart';
import 'package:route_task_flutter/Domain/Entities/ProductEntity.dart';

sealed class States{}

class LoadingState extends States{}

class SuccessState extends States{
  List<ProductEntity> data ;

  SuccessState(this.data);
}

class ErrorStates extends States{}