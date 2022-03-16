import 'package:get/get.dart';
import 'package:invoices_app/presentation/second_screen/controller/second_screen_controller.dart';

class SecondScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SecondScreenController());
  }
}