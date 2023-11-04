class ErrorModel {
  final String message;

  const ErrorModel({required this.message});
  factory ErrorModel.fromMap(Map<String,dynamic>errorMap)=>ErrorModel(message: errorMap["message"]);
}