import 'package:clitest/app/data/home_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>>{
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    HomeProvider().getUser().then((value) {
      change(value,status: RxStatus.success());
      
    },onError: (err){
      change(null,status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
