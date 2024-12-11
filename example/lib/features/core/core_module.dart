import 'package:deivao_modules/deivao_modules.dart';

import 'adapters/http_client.dart';

export 'adapters/http_client.dart';

class CoreModule extends Module {
  @override
  List<Type> imports = [];

  @override
  Future<void> registerBinds(InjectorRegister i) async {
    i.addLazySingleton<HttpClient>(HttpClientImpl.cached);
  }
}
