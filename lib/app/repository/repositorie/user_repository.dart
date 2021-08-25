import 'package:teste/app/repository/client/rest_client.dart';
import 'package:teste/app/repository/interface/i_user_repository.dart';
import 'package:teste/app/repository/model/user_model.dart';

class UserRepository implements IUserRepository {
  final RestClient restClient;

  UserRepository(this.restClient);

  @override
  Future<List<UserModel?>> findAll() async {
    final resp = await restClient.get(
      'https://612643973ab4100017a68e75.mockapi.io/user',
      decoder: (body) {
        if (body is List) {
          return body.map<UserModel>((res) => UserModel.fromMap(res)).toList();
        }
      },
    );
    return resp.body!;
  }
}
