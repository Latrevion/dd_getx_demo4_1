import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/counter.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  //获取计数器实例
  // CounterController counterController = Get.find();
  CounterController counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text('${counterController.counter}',style: Theme.of(context).textTheme.headlineLarge,)),
          const SizedBox(height: 40),
          // Text('${counterController.counter}',style: Theme.of(context).textTheme.headlineLarge,),//不加obx的话，dec操作页面不响应。
          // const SizedBox(height: 40,),
          // Obx(() => Text("${counterController.counter}",
          //     style: Theme.of(context).textTheme.displaySmall)),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                counterController.dec();
                counterController.dec();
              },
              child: const Text("计数器-1"))
        ],
      ),
    );
  }
}
