import 'package:get/get.dart';
import 'package:teste/app/repository/interface/i_user_repository.dart';

class HomeController extends GetxController with StateMixin {
  final IUserRepository repository;
  HomeController(this.repository);

  @override
  void onInit() {
    findUser();
    super.onInit();
  }

  Future<void> findUser() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await repository.findAll();
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Nao foi possivel carregar'));
    }
  }
}
