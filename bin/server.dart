import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import '../routes/admin_routes.dart';
import '../routes/user_routes.dart';

void main(List<String> args) async {
  String address = Platform.environment['HOST'] ?? '127.0.0.1';
  int port = int.parse(Platform.environment['PORT'] ?? '4000');

  Handler cascade = Cascade()
  .add(UserRoutes(baseRoute: '/user').routes)
  .add(AdminRoutes(baseRoute: '/admin').routes).handler;

  Handler handler = Pipeline().addMiddleware(logRequests()).addHandler(cascade);

  HttpServer server = await serve(handler, address, port);
  print('Server listening on ${server.address} - ${server.port}');
}
