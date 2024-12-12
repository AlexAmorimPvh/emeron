import 'package:emeron/core/services/http/http.service.dart';
import 'package:emeron/core/services/http/http_impl.service.dart';
import 'package:get/get.dart';
import 'package:emeron/features/auth/presentation/controllers/auth.controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    final IHttpService httpService = HttpServiceImpl();
    Get.put(AuthController());
  }
}
