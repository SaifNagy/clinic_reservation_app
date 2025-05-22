import 'package:json_annotation/json_annotation.dart';

part 'specializations_response_model.g.dart';

@JsonSerializable()
class SpecializationsResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationsData?>? specializationDataList;
  //   List<SpecializationsData?>? specializationsDataList;


  SpecializationsResponseModel({
    this.specializationDataList,
  });

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name;
  @JsonKey(name:'doctors')
  List<Doctors?>? doctorlist;

  SpecializationsData({
    this.id,
    this.name,
    this.doctorlist,
  });

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  @JsonKey(name:'appoint_price')
  int? price;
  String degree;

  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.price,
    required this.degree,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}











// // ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'package:json_annotation/json_annotation.dart';
// part 'specializations_response_model.g.dart';
// @JsonSerializable()
// class SpecializationsResponseModel {
//   @JsonKey(name: 'data')
//   List<SpecializationsData?>? specializationsDataList;
//   SpecializationsResponseModel({
//     this.specializationsDataList,
//   });

//   factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) => _$SpecializationsResponseModelFromJson(json);
// }

// @JsonSerializable()
// class SpecializationsData {
//   int? id;
//   String? name;
//   @JsonKey(name: 'doctors')
//   List<Doctors?>? doctorslist;
//   SpecializationsData({
//     this.id,
//     this.name,
//     this.doctorslist,
//   });
//   factory SpecializationsData.fromJson(Map<String, dynamic> json) => _$SpecializationsDataFromJson(json);
// }

// @JsonSerializable()
// class Doctors {
//   int? id;
//   String? name;
//   String? email;
//   String? phone;
//   String? photo;
//   String? gender;
//   @JsonKey(name: 'appoint_price')
//   String? price;
//   String? degree;
//   Doctors({
//     this.id,
//     this.name,
//     this.email,
//     this.phone,
//     this.photo,
//     this.gender,
//     this.price,
//     this.degree,
//   });

//   factory Doctors.fromJson(Map<String, dynamic> json) => _$DoctorsFromJson(json);
// }
