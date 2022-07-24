import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../entities/admin_entity.dart';

class AdminRoutes {
  final String baseRoute;

  AdminRoutes({required this.baseRoute});

  Handler get routes {
    Router router = Router();
    AdminEntity adminEntity = AdminEntity();

    router.get('$baseRoute/', adminEntity.getAllAdmins);
    router.get('$baseRoute/<id>', adminEntity.getAllAdmins);
    router.post('$baseRoute/create', adminEntity.getAllAdmins);
    router.put('$baseRoute/update', adminEntity.getAllAdmins);

    return router;
  }

  
}