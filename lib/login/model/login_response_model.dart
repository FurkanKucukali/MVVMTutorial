class LoginResponseModel {
  int? userID;
  String? userNameSurname;
  String? userMail;
  String? userName;
  String? userPassword;
  int? branchID;
  bool? isCommonAccount;
  String? userTimeStamp;
  bool? isWebUser;
  bool? isMobileUser;
  bool? isCorporatePersonnel;
  bool? isActive;
  List? offer;
  List? stockActivity;
  List? userAction;
  List? role;
  List? workOperationHistory;
  List? workOperationHistoryPassive;

  LoginResponseModel(Map<String, dynamic> mymap, 
      {this.userID,
        this.userNameSurname,
        this.userMail,
        this.userName,
        this.userPassword,
        this.branchID,
        this.isCommonAccount,
        this.userTimeStamp,
        this.isWebUser,
        this.isMobileUser,
        this.isCorporatePersonnel,
        this.isActive,
        this.offer,
        this.stockActivity,
        this.userAction,
        this.role,
        this.workOperationHistory,
        this.workOperationHistoryPassive});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    userID = json['UserID'];
    userNameSurname = json['UserNameSurname'];
    userMail = json['UserMail'];
    userName = json['UserName'];
    userPassword = json['UserPassword'];
    branchID = json['BranchID'];
    isCommonAccount = json['IsCommonAccount'];
    userTimeStamp = json['UserTimeStamp'];
    isWebUser = json['isWebUser'];
    isMobileUser = json['isMobileUser'];
    isCorporatePersonnel = json['IsCorporatePersonnel'];
    isActive = json['IsActive'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserID'] = this.userID;
    data['UserNameSurname'] = this.userNameSurname;
    data['UserMail'] = this.userMail;
    data['UserName'] = this.userName;
    data['UserPassword'] = this.userPassword;
    data['BranchID'] = this.branchID;
    data['IsCommonAccount'] = this.isCommonAccount;
    data['UserTimeStamp'] = this.userTimeStamp;
    data['isWebUser'] = this.isWebUser;
    data['isMobileUser'] = this.isMobileUser;
    data['IsCorporatePersonnel'] = this.isCorporatePersonnel;
    data['IsActive'] = this.isActive;

    return data;
  }
}