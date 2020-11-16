import 'package:flutter_template/util/permission/permission_handling.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandler extends PermissionHandling {
  PermissionHandler();

  @override
  Future<bool> cameraPermissionIsGranted() async {
    final result = await Permission.camera.request().isGranted;
    return result;
  }
}
