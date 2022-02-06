import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:init_project/app/modules/home/controllers/home_controller.dart';

class DetailView extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Repository'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Center(
                  child: Image.network(
                    controller.currentRepository!.avatarUrl.toString(),
                    height: height * 0.4,
                  )
                ),
              ),
              Text(
                '${controller.currentRepository!.fullName}',
                style: TextStyle(fontSize: 24)
              ),
              Text(
                'Written in ${controller.currentRepository!.language}',
                style: TextStyle(fontSize: 16)
              ),
              Text(
                '${controller.currentRepository!.stars} stars',
                style: TextStyle(fontSize: 16)
              ),
              Text(
                '${controller.currentRepository!.watchers} watchers',
                style: TextStyle(fontSize: 16)
              ),
              Text(
                '${controller.currentRepository!.forks} forks',
                style: TextStyle(fontSize: 16)
              ),
              Text(
                '${controller.currentRepository!.issues} open issues',
                style: TextStyle(fontSize: 16)
              ),
            ],
          ),
        ),
      ),
    );

  }
  
}