import 'package:get/get.dart';

class LoginController extends GetxController {
  final RxString email = ''.obs;
  final RxString password = ''.obs;
  final RxBool isLoading = false.obs;

  final AuthService authService = AuthService();

  Future<void> login() async {
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar("Error", "Please enter email and password");
      return;
    }

    isLoading.value = true;

    bool success = await authService.login(email.value, password.value);

    isLoading.value = false;

    if (success) {
      Get.offNamed('/HomeScreen');
    } else {
      Get.snackbar("Error", "Invalid credentials");
    }
  }
}

class AuthService {
  Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));
    return email == "test@example.com" && password == "password";
  }
}
