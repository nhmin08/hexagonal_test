class Error{
  final String message;
  final dynamic errors;
  final String code;

  Error({required this.message, required this.errors, required this.code});

  factory Error.fromJson(Map<String, dynamic> json){
    return Error(
      message: json['message'],
      errors: json['errors'],
      code: json['code']
    );
  }
}