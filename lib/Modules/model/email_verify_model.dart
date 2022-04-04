
import 'dart:convert';

EmailVerifyModel emailVerifyModelFromJson(String str) => EmailVerifyModel.fromJson(json.decode(str));

String emailVerifyModelToJson(EmailVerifyModel data) => json.encode(data.toJson());

class EmailVerifyModel {
    EmailVerifyModel({
        this.email,
        this.otp,
    });

    String? email;
    String? otp;

    factory EmailVerifyModel.fromJson(Map<String, dynamic> json) => EmailVerifyModel(
        email: json["email"],
        otp: json["otp"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "otp": otp,
    };
}
