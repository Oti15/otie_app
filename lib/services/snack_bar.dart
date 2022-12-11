import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar_controller.dart';


SnackbarController showSnackbar_signInSuccessfully() {
  return Get.showSnackbar(
    GetSnackBar(
      title: "sign_in",
      message: tr('sign_in_successfully'),
      duration: Duration(seconds: 3),
    ),
  );
}

SnackbarController showSnackbar_registerationSuccessfully() {
  return Get.showSnackbar(
    GetSnackBar(
      title: tr("user_registration"),
      message: tr('user_registered_successfully'),
      duration: Duration(seconds: 3),
    ),
  );
}

SnackbarController showSnackbar_erorrAuth() {
  return Get.showSnackbar(
    GetSnackBar(
      title: tr("error"),
      message: tr('please_enter_correct_information'),
      duration: Duration(seconds: 3),
    ),
  );
}

SnackbarController showSnackbar_saveEditSuccessfully() {
  return Get.showSnackbar(
    GetSnackBar(
      title: tr("save_edit"),
      message: tr('save_edit_successfully'),
      duration: Duration(seconds: 3),
    ),
  );
}

SnackbarController showSnackbar_saveEditError() {
  return Get.showSnackbar(
    GetSnackBar(
      title: tr("save_edit"),
      message: tr('save_edit_error'),
      duration: Duration(seconds: 3),
    ),
  );
}
