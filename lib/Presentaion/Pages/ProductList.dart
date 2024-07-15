import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task_flutter/Core/Config/ApplicationTheme.dart';
import 'package:route_task_flutter/Presentaion/Widgets/ProductItem.dart';

import '../Cubit/Cubit.dart';
import '../Cubit/states.dart';

class ProductList extends StatefulWidget {
  ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  var formKey = GlobalKey<FormState>();



  var vm = ProductsCubit();

  @override
  void initState() {
    vm.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: ImageIcon(
                      AssetImage("assets/icons/search.png"),
                      color: Apptheme.primaryColor,
                    ),
                    hintText: "what do you search for?",
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Apptheme.primaryColor, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Apptheme.primaryColor, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const ImageIcon(
                AssetImage("assets/icons/cart.png"),
                color: Apptheme.primaryColor,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          BlocProvider(
            create: (context) => vm, // Use the existing vm instance
            child: BlocBuilder<ProductsCubit, States>(
              bloc: vm,
              builder: (context, state) {
                if (state is LoadingState) {
                  print("loading");
                  return const Center(child: CircularProgressIndicator());
                } else if (state is Error) {
                  return const Text("Error");
                } else if (state is SuccessState) {
                  print("yooooooo");
                  var data = state.data;
                  return Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                          childAspectRatio:
                              size.width * 0.44 / size.height * 3),
                      itemCount:data.length,
                      itemBuilder: (context, index) => ProductItems(image: data[index].image.toString(),
                          name: data[index].title.toString(),
                          description: data[index].discription.toString(),
                          price: data[index].price as double,
                          sale: data[index].discount ,
                          reviews: data[index].rating as double),
                    ),
                  );
                } else {
                  return const SizedBox
                      .shrink(); // Fallback in case of an unexpected state
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
