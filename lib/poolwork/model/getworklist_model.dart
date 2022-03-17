class WorkListModel {
  int? workID;
  String? workNumber;
  int? createdUserId;
  int? assignedUserId;
  String? createdUserNameSurname;
  int? customerRepresentativeID;
  String? authorizatedPersonName;
  String? customerName;
  String? customerTitle;
  String? workName;
  int? workLineID;
  String? workLineName;
  bool? isDynamic;
  int? workLineStepID;
  String? workLineStepName;
  String? userName;
  bool? isWorkImportant;
  bool? customerWaiting;
  String? workDescription;
  String? existingUserDoingJob;
  bool? isCorporateCreatedPersonnel;
  String? isCorporateCustomerRepresentativePersonnel;
  String? stepPersonMessage;
  String? productUniqValue;
  String? groupingCode;
  String? workCreationDate;
  String? workCreationDate2;
  String? workCreationDateString;
  String? workDeliveryDate;
  String? workDeliveryDate2;
  String? workDeliveryDateString;

  WorkListModel(
      {this.workID,
        this.workNumber,
        this.createdUserId,
        this.assignedUserId,
        this.createdUserNameSurname,
        this.customerRepresentativeID,
        this.authorizatedPersonName,
        this.customerName,
        this.customerTitle,
        this.workName,
        this.workLineID,
        this.workLineName,
        this.isDynamic,
        this.workLineStepID,
        this.workLineStepName,
        this.userName,
        this.isWorkImportant,
        this.customerWaiting,
        this.workDescription,
        this.existingUserDoingJob,
        this.isCorporateCreatedPersonnel,
        this.isCorporateCustomerRepresentativePersonnel,
        this.stepPersonMessage,
        this.productUniqValue,
        this.groupingCode,
        this.workCreationDate,
        this.workCreationDate2,
        this.workCreationDateString,
        this.workDeliveryDate,
        this.workDeliveryDate2,
        this.workDeliveryDateString});

  WorkListModel.fromJson(Map<String, dynamic> json) {
    workID = json['WorkID'];
    workNumber = json['WorkNumber'];
    createdUserId = json['CreatedUserId'];
    assignedUserId = json['AssignedUserId'];
    createdUserNameSurname = json['CreatedUserNameSurname'];
    customerRepresentativeID = json['CustomerRepresentativeID'];
    authorizatedPersonName = json['AuthorizatedPersonName'];
    customerName = json['CustomerName'];
    customerTitle = json['CustomerTitle'];
    workName = json['WorkName'];
    workLineID = json['WorkLineID'];
    workLineName = json['WorkLineName'];
    isDynamic = json['IsDynamic'];
    workLineStepID = json['WorkLineStepID'];
    workLineStepName = json['WorkLineStepName'];
    userName = json['UserName'];
    isWorkImportant = json['isWorkImportant'];
    customerWaiting = json['CustomerWaiting'];
    workDescription = json['WorkDescription'];
    existingUserDoingJob = json['ExistingUserDoingJob'];
    isCorporateCreatedPersonnel = json['IsCorporateCreatedPersonnel'];
    isCorporateCustomerRepresentativePersonnel =
    json['IsCorporateCustomerRepresentativePersonnel'];
    stepPersonMessage = json['StepPersonMessage'];
    productUniqValue = json['ProductUniqValue'];
    groupingCode = json['GroupingCode'];
    workCreationDate = json['WorkCreationDate'];
    workCreationDate2 = json['WorkCreationDate2'];
    workCreationDateString = json['WorkCreationDate_string'];
    workDeliveryDate = json['WorkDeliveryDate'];
    workDeliveryDate2 = json['WorkDeliveryDate2'];
    workDeliveryDateString = json['WorkDeliveryDate_string'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['WorkID'] = this.workID;
    data['WorkNumber'] = this.workNumber;
    data['CreatedUserId'] = this.createdUserId;
    data['AssignedUserId'] = this.assignedUserId;
    data['CreatedUserNameSurname'] = this.createdUserNameSurname;
    data['CustomerRepresentativeID'] = this.customerRepresentativeID;
    data['AuthorizatedPersonName'] = this.authorizatedPersonName;
    data['CustomerName'] = this.customerName;
    data['CustomerTitle'] = this.customerTitle;
    data['WorkName'] = this.workName;
    data['WorkLineID'] = this.workLineID;
    data['WorkLineName'] = this.workLineName;
    data['IsDynamic'] = this.isDynamic;
    data['WorkLineStepID'] = this.workLineStepID;
    data['WorkLineStepName'] = this.workLineStepName;
    data['UserName'] = this.userName;
    data['isWorkImportant'] = this.isWorkImportant;
    data['CustomerWaiting'] = this.customerWaiting;
    data['WorkDescription'] = this.workDescription;
    data['ExistingUserDoingJob'] = this.existingUserDoingJob;
    data['IsCorporateCreatedPersonnel'] = this.isCorporateCreatedPersonnel;
    data['IsCorporateCustomerRepresentativePersonnel'] =
        this.isCorporateCustomerRepresentativePersonnel;
    data['StepPersonMessage'] = this.stepPersonMessage;
    data['ProductUniqValue'] = this.productUniqValue;
    data['GroupingCode'] = this.groupingCode;
    data['WorkCreationDate'] = this.workCreationDate;
    data['WorkCreationDate2'] = this.workCreationDate2;
    data['WorkCreationDate_string'] = this.workCreationDateString;
    data['WorkDeliveryDate'] = this.workDeliveryDate;
    data['WorkDeliveryDate2'] = this.workDeliveryDate2;
    data['WorkDeliveryDate_string'] = this.workDeliveryDateString;
    return data;
  }
}