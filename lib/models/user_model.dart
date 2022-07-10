class UserModel {
  final String token;
  final UserInfo userinfo;

  UserModel({
    required this.token,
    required this.userinfo
  });

  factory UserModel.formJson(jsonData) {
    return UserModel(token: jsonData['access_token'] ,userinfo: UserInfo.formJson(jsonData['user']));
  }
}

class UserInfo {
  final String name;
  final String mobile;
  final String gender;
  final String region_id;
  final String city_id;
  UserInfo(
      {required this.name,
      required this.mobile,
      required this.gender,
      required this.region_id,
      required this.city_id});
  factory UserInfo.formJson(jsonData) {
    return UserInfo(
        name: jsonData['name'],
        mobile: jsonData['mobile'],
        gender: jsonData['gender'],
        region_id: jsonData['region_id'],
        city_id: jsonData['city_id']);
  }
}
