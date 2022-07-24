import 'dart:convert';

import 'package:shelf/shelf.dart';

class UserEntity{
  
  Response getAllUsers(Request request){
    try {
      List<Map<String, dynamic>> users = [
        { 'id': 1, 'name': 'John Doe', 'email': ''},
        { 'id': 1, 'name': 'Jane Doe', 'email': ''}
      ];

      return Response.ok(json.encode(users));
    } catch (e) {
      return Response.internalServerError(body: e.toString());
    }
  }

  void getUserById(String id){
    // get user
  }

  void createUser(String name, String email, String password){
    // create user
  }

  void updateUser(String name, String email, String password){
    // update user
  }

  void deleteUser(String name, String email, String password){
    // delete user
  }

}