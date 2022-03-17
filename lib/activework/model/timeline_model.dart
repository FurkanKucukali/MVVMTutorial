class TimeLineModel {
  String? name;
  String? date;
  int? workLineStepID;
  List<UserList>? userList;

  TimeLineModel({this.name, this.date, this.workLineStepID, this.userList});

  TimeLineModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'];
    workLineStepID = json['WorkLineStepID'];
    if (json['userList'] != null) {
      userList = <UserList>[];
      json['userList'].forEach((v) {
        userList!.add(new UserList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['date'] = this.date;
    data['WorkLineStepID'] = this.workLineStepID;
    if (this.userList != null) {
      data['userList'] = this.userList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserList {
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

  UserList(
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

  UserList.fromJson(Map<String, dynamic> json) {
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
    if (this.offer != null) {
      data['Offer'] = this.offer!.map((v) => v.toJson()).toList();
    }
    if (this.stockActivity != null) {
      data['StockActivity'] =
          this.stockActivity!.map((v) => v.toJson()).toList();
    }
    if (this.userAction != null) {
      data['UserAction'] = this.userAction!.map((v) => v.toJson()).toList();
    }
    if (this.role != null) {
      data['Role'] = this.role!.map((v) => v.toJson()).toList();
    }
    if (this.workOperationHistory != null) {
      data['WorkOperationHistory'] =
          this.workOperationHistory!.map((v) => v.toJson()).toList();
    }
    if (this.workOperationHistoryPassive != null) {
      data['WorkOperationHistoryPassive'] =
          this.workOperationHistoryPassive!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}