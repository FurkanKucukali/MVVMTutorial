class WorkLine {
  int? workLineID;
  String? workLineName;
  int? workLineSequence;
  int? branchID;
  bool? isDynamic;
  bool? isLocked;
  bool? isNotWorkAdd;
  bool? isActive;
  List? work;
  List? workLineStepSequence;

  WorkLine(
      {this.workLineID,
        this.workLineName,
        this.workLineSequence,
        this.branchID,
        this.isDynamic,
        this.isLocked,
        this.isNotWorkAdd,
        this.isActive,
        this.work,
        this.workLineStepSequence});

  WorkLine.fromJson(Map<String, dynamic> json) {
    workLineID = json['WorkLineID'];
    workLineName = json['WorkLineName'];
    workLineSequence = json['WorkLineSequence'];
    branchID = json['BranchID'];
    isDynamic = json['IsDynamic'];
    isLocked = json['IsLocked'];
    isNotWorkAdd = json['IsNotWorkAdd'];
    isActive = json['IsActive'];
    work = json['Work'];
    workLineStepSequence = json['WorkLineStepSequence'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['WorkLineID'] = this.workLineID;
    data['WorkLineName'] = this.workLineName;
    data['WorkLineSequence'] = this.workLineSequence;
    data['BranchID'] = this.branchID;
    data['IsDynamic'] = this.isDynamic;
    data['IsLocked'] = this.isLocked;
    data['IsNotWorkAdd'] = this.isNotWorkAdd;
    data['IsActive'] = this.isActive;
    data['Work'] = this.work;
    data['WorkLineStepSequence'] = this.workLineStepSequence;

    return data;
  }
}