import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: controller.obx((data) {
        return ListView.builder(itemCount: data!.length,itemBuilder: (_,index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data[index]['picture']['large'].toString()),
              ),
              title: Text(data[index]['name']['title']+' '+data[index]['name']['first'] + ' ' + data[index]['name']['last'] ),
              subtitle: Text(data[index]['email']),

            ),
          );
        });
      })
    );
  }
}
