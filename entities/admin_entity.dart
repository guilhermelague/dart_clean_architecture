import 'package:shelf/shelf.dart';

class AdminEntity{
  
  Response getAllAdmins(){
    List<Map<String, dynamic>> admins = [
      {
        'id': 1,
        'name': 'John Doe',
        'email': ''
      },
      {
        'id': 2,
        'name': 'Jane Doe',
        'email': ''
      }
    ];

    return Response.ok(admins);
  }

  void getAdminById(String id){
    // get Admin
  }

  void createAdmin(String name, String email, String password){
    // create Admin
  }

  void updateAdmin(String name, String email, String password){
    // update Admin
  }

  void deleteAdmin(String name, String email, String password){
    // delete Admin
  }

}