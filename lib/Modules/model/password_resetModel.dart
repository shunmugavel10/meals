
import 'dart:convert';

PasswordResetModel passwordResetModelFromJson(String str) => PasswordResetModel.fromJson(json.decode(str));

String passwordResetModelToJson(PasswordResetModel data) => json.encode(data.toJson());

class PasswordResetModel {
    PasswordResetModel({
        this.msg,
        this.email,
        this.otpId,
        this.vendorId,
    });

    String? msg;
    String? email;
    String? otpId;
    String? vendorId;

    factory PasswordResetModel.fromJson(Map<String, dynamic> json) => PasswordResetModel(
        msg: json["msg"],
        email: json["email"],
        otpId: json["otp_id"],
        vendorId: json["vendor_id"],
    );

    Map<String, dynamic> toJson() => {
        "msg": msg,
        "email": email,
        "otp_id": otpId,
        "vendor_id": vendorId,
    };
}
