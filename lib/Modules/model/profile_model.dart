
import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
    ProfileModel({
        this.id,
        this.firstName,
        this.lastName,
        this.contactNumber,
        this.email,
        this.category,
        this.isVerified,
        this.passwordResetStatus,
    });

    String? id;
    String? firstName;
    String? lastName;
    String? contactNumber;
    String? email;
    List<Category>? category;
    bool? isVerified;
    int? passwordResetStatus;

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        contactNumber: json["contact_number"],
        email: json["email"],
        category: List<Category>.from(json["category"].map((x) => Category.fromJson(x))),
        isVerified: json["is_verified"],
        passwordResetStatus: json["password_reset_status"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "first_name": firstName,
        "last_name": lastName,
        "contact_number": contactNumber,
        "email": email,
        "category": List<dynamic>.from(category!.map((x) => x.toJson())),
        "is_verified": isVerified,
        "password_reset_status": passwordResetStatus,
    };
}

class Category {
    Category({
        this.title,
        this.categoryId,
        this.type,
    });

    String? title;
    String? categoryId;
    int? type;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        title: json["title"],
        categoryId: json["category_id"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "category_id": categoryId,
        "type": type,
    };
}
