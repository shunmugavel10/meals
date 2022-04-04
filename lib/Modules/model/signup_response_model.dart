import 'dart:convert';

ResponseModel responseModelFromJson(String str) => ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

class ResponseModel {
    ResponseModel({
        this.msg,
        this.email,
        this.statusDetails,
    });

    String? msg;
    String? email;
    int? statusDetails;

    factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        msg: json["msg"],
        email: json["email"],
        statusDetails: json["status_details"],
    );

    Map<String, dynamic> toJson() => {
        "msg": msg,
        "email": email,
        "status_details": statusDetails,
    };
}
