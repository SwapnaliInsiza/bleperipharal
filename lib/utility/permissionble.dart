import 'package:permission_handler/permission_handler.dart';

class PersmissionBle {
  getLocationPermission() async {
    var status = await Permission.location.status;
    if (status.isDenied) {
      // We didn't ask for permission yet or the permission has been denied before but not permanently.
      await Permission.location.request();
    }

// You can can also directly ask the permission about its status.
    if (await Permission.location.isRestricted) {
      // The OS restricts access, for example because of parental controls.
      await Permission.location.request();
    }
  }
}
