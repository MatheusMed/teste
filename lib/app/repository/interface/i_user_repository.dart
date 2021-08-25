import 'package:teste/app/repository/model/user_model.dart';

abstract class IUserRepository {
  Future<List<UserModel?>> findAll();
}
