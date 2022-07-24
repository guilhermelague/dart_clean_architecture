import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../entities/user_entity.dart';

class UserRoutes {
  final String baseRoute;

  UserRoutes({required this.baseRoute});
  
  Handler get routes {
    Router router = Router();
    UserEntity userEntity = UserEntity();

    router.get(baseRoute, userEntity.getAllUsers);
    router.get('$baseRoute/<id>', userEntity.getAllUsers);
    router.post('$baseRoute/create', userEntity.getAllUsers);
    router.put('$baseRoute/update', userEntity.getAllUsers);

    return router;
  }
}