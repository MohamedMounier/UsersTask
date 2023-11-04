import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:users_task/api_request.dart';
import 'package:users_task/enums.dart';
import 'package:users_task/resources/app_colors.dart';
import 'package:users_task/user_model.dart';

class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  final UsersApiRequests usersApiRequests=UsersApiRequests();
  List<UserModel> users=[];
  StatusRequest statusRequest=StatusRequest.loading;
  String errorMessage='';
  @override
  initState(){
    super.initState();
  _getUsers();

  }
  _getUsers()async{
    setState(() {
      statusRequest=StatusRequest.loading;
    });
   final result=await usersApiRequests.fetchUsers();
   result.fold((l) {
     setState(() {
       statusRequest=StatusRequest.failure;
       errorMessage=l.message;
     });
   }, (r) {
     setState(() {
       statusRequest=StatusRequest.success;
       errorMessage="";
       users=r;
     });
   });
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: ()async{
       await _getUsers();
      },
      child: Builder(
        builder: (context) {
          if(statusRequest==StatusRequest.loading){
            return const Center(child: CircularProgressIndicator(color: AppColors.primary,),);
          }
         else if(statusRequest==StatusRequest.success){
           return ListView.builder(
               itemCount: users.length,
               itemBuilder: (context,index){
             return Padding(
               padding:  EdgeInsets.symmetric(vertical: .5.h),
               child: ListTile(
                 leading: Text("${users[index].id}"),
                 title: Text(users[index].name,style: Theme.of(context).textTheme.displayMedium,),
                 trailing: const Icon(Icons.arrow_forward_rounded,color: AppColors.grayLightText),
               ),
             );
           },  );
         }else if(statusRequest==StatusRequest.failure){
           return Center(child: Text(errorMessage),);
          }else{
            return const Center(child: Text("Kindly Pull screen to refresh data"),);
          }
        }
      ),
    );
  }
}
