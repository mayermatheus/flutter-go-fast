import 'package:flutter_go_fast/app/modules/home/home_controller.dart';
import 'package:flutter_go_fast/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  /**
   * Metodo responsável por realizar a injenção de dependencia do controlador na pagina
   */
  List<Bind> get binds => [
        Bind(
          (i) => HomeController(),
        )
      ];

  @override
  /**
   * Metodo responsável por realizar o mapeamento das rotas no modulo corrente.
   */
  List<Router> get routers => [
        Router(
          '/',
          child: (_, args) => HomePage(),
        ),
      ];

  /**
   * Realiza a injenção de dependencia do módulo
   */
  static Inject get to => Inject<HomeModule>.of();
}
