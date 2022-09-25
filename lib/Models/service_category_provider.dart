class ServiceCategoryProvider {
  int id;
  String name;
  String image;
  String description;
  String createdAt;
  String updatedAt;
  List<Providers> providers;

  ServiceCategoryProvider(
      {this.id,
      this.name,
      this.image,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.providers});

  ServiceCategoryProvider.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['providers'] != null) {
      providers = <Providers>[];
      json['providers'].forEach((v) {
        providers.add(new Providers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.providers != null) {
      data['providers'] = this.providers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Providers {
  int id;
  String name;
  String address;
  String description;
  String status;
  String image;
  String rating;
  String price;
  String primaryPhone;
  String secondaryPhone;
  String serviceCategoryId;
  String createdAt;
  String updatedAt;
  String educationalQualification;
  String gender;
  String dob;
  String age;
  String yearsOfExperience;

  Providers(
      {this.id,
      this.name,
      this.address,
      this.description,
      this.status,
      this.image,
      this.rating,
      this.price,
      this.primaryPhone,
      this.secondaryPhone,
      this.serviceCategoryId,
      this.createdAt,
      this.updatedAt,
      this.educationalQualification,
      this.gender,
      this.dob,
      this.age,
      this.yearsOfExperience});

  Providers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    description = json['description'];
    status = json['status'];
    image = json['image'];
    rating = json['rating'];
    price = json['price'];
    primaryPhone = json['primary_phone'];
    secondaryPhone = json['secondary_phone'];
    serviceCategoryId = json['service_category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    educationalQualification = json['educational_qualification'];
    gender = json['gender'];
    dob = json['dob'];
    age = json['age'];
    yearsOfExperience = json['years_of_experience'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['description'] = this.description;
    data['status'] = this.status;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['price'] = this.price;
    data['primary_phone'] = this.primaryPhone;
    data['secondary_phone'] = this.secondaryPhone;
    data['service_category_id'] = this.serviceCategoryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['educational_qualification'] = this.educationalQualification;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['age'] = this.age;
    data['years_of_experience'] = this.yearsOfExperience;
    return data;
  }
}
