import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:init_project/app/modules/home/views/detail_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Search repositories',
                  hintStyle: TextStyle(fontSize: 16),
                  contentPadding: const EdgeInsets.all(16)
                ),
                onSubmitted: (value) async{
                  await controller.search(value);
                },
              )              
            )
          ),

          SingleChildScrollView(
            child: Container(
              height: 400,
              child: Obx((){
                return ListView.builder(
                  itemCount: controller.repositoriesLenght.value,
                  itemBuilder: (context, index){
                    return Card(
                      child: ListTile(
                        title: Text('${controller.repositories![index].fullName}'),
                        onTap: (){
                          controller.currentRepository = controller.repositories![index];
                          print(controller.currentRepository!.avatarUrl);
                          Get.to(() => DetailView());
                        },
                      ),
                    );
                  }
                );
              })
            ),
          )
        ],
      )
    );
  }
}
