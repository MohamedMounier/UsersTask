class UserModel{
final int id;
final String name;


const UserModel({required this.id,required this.name});

factory UserModel.fromJson(Map<String,dynamic> data)=>UserModel(id: data["id"],name: data["name"]);
}