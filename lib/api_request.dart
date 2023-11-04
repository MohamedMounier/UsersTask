import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:users_task/error_model.dart';
import 'package:users_task/user_model.dart';

class UsersApiRequests{
  //Users Remote Api Requests
  Future< List<dynamic>> getUsersData() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    List<dynamic> responseBody = jsonDecode(response.body);
    return responseBody ;
  }

  //Handling Remote Api Request Result
  Future<Either<ErrorModel, List<UserModel>>> fetchUsers()async{
  try{
    final result=await getUsersData();
    if(result.isNotEmpty){
      try{
        return Right(List<UserModel>.from(result.map((e) => UserModel.fromJson(e))).toList());
      }catch (error){
        return Left(ErrorModel(message: error.toString()));
      }

    }else{
      return const Left(ErrorModel(message: "Server Error Occurred"));
    }

  }on Exception catch(error){
    return Left(ErrorModel(message: error.toString()));
  }
}
}