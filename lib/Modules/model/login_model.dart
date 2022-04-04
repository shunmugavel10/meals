import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
        this.accessToken,
        this.refreshToken,
        this.vendorId,
        this.passwordResetStatus,
        this.category,
    });

    String? accessToken;
    String? refreshToken;
    String? vendorId;
    int? passwordResetStatus;
    String? category;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
        vendorId: json["vendor_id"],
        passwordResetStatus: json["password_reset_status"],
        category: json["category"],
    );

    Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "refreshToken": refreshToken,
        "vendor_id": vendorId,
        "password_reset_status": passwordResetStatus,
        "category": category,
    };
}
