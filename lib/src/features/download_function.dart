import 'package:universal_html/html.dart' as html;

abstract class DownloadService {
  Future<void> download({required String url});
}

class WebDownloadService implements DownloadService {
  @override
  Future<void> download({required String url}) async {
    html.window.open(url, "_blank");
  }
}

var webDownload = new WebDownloadService();

class MobileDownloadService implements DownloadService {
  @override
  Future<void> download({required String url}) {
    throw UnimplementedError();
  }
}

// https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-0.78-installer.msi