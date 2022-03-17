class ActiveWorkModel {
  int? workID;
  String? workNumber;
  String? productUniqValue;
  String? workName;
  String? customerName;
  String? authorizatedPersonName;
  String? currentUserName;
  String? deliveryDate;
  String? deliveryDate2;
  Null? deliveryDateStr;
  String? deliveryDateString;
  bool? isImportant;
  bool? customerWaiting;
  bool? isWorkComplete;
  Null? workDescription;
  int? workLineID;
  String? workLineName;
  bool? isDynamic;
  String? workLineStepName;
  bool? isInvoice;
  bool? isDispatch;
  bool? isReserved;
  bool? isWaitingInvoiced;
  bool? isDelivered;
  bool? isDelivering;
  bool? isWaitingShipment;
  bool? isWaitingCargo;
  Null? invoiceState;
  int? customerRepresentativeID;
  int? createdUserID;
  String? createdUserNameSurname;

  ActiveWorkModel(
      {this.workID,
        this.workNumber,
        this.productUniqValue,
        this.workName,
        this.customerName,
        this.authorizatedPersonName,
        this.currentUserName,
        this.deliveryDate,
        this.deliveryDate2,
        this.deliveryDateStr,
        this.deliveryDateString,
        this.isImportant,
        this.customerWaiting,
        this.isWorkComplete,
        this.workDescription,
        this.workLineID,
        this.workLineName,
        this.isDynamic,
        this.workLineStepName,
        this.isInvoice,
        this.isDispatch,
        this.isReserved,
        this.isWaitingInvoiced,
        this.isDelivered,
        this.isDelivering,
        this.isWaitingShipment,
        this.isWaitingCargo,
        this.invoiceState,
        this.customerRepresentativeID,
        this.createdUserID,
        this.createdUserNameSurname});

  ActiveWorkModel.fromJson(Map<String, dynamic> json) {
    workID = json['WorkID'];
    workNumber = json['WorkNumber'];
    productUniqValue = json['ProductUniqValue'];
    workName = json['WorkName'];
    customerName = json['CustomerName'];
    authorizatedPersonName = json['AuthorizatedPersonName'];
    currentUserName = json['CurrentUserName'];
    deliveryDate = json['DeliveryDate'];
    deliveryDate2 = json['DeliveryDate2'];
    deliveryDateStr = json['DeliveryDateStr'];
    deliveryDateString = json['DeliveryDate_string'];
    isImportant = json['isImportant'];
    customerWaiting = json['CustomerWaiting'];
    isWorkComplete = json['isWorkComplete'];
    workDescription = json['WorkDescription'];
    workLineID = json['WorkLineID'];
    workLineName = json['WorkLineName'];
    isDynamic = json['IsDynamic'];
    workLineStepName = json['WorkLineStepName'];
    isInvoice = json['isInvoice'];
    isDispatch = json['isDispatch'];
    isReserved = json['isReserved'];
    isWaitingInvoiced = json['isWaitingInvoiced'];
    isDelivered = json['isDelivered'];
    isDelivering = json['isDelivering'];
    isWaitingShipment = json['isWaitingShipment'];
    isWaitingCargo = json['isWaitingCargo'];
    invoiceState = json['InvoiceState'];
    customerRepresentativeID = json['CustomerRepresentativeID'];
    createdUserID = json['CreatedUserID'];
    createdUserNameSurname = json['CreatedUserNameSurname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['WorkID'] = this.workID;
    data['WorkNumber'] = this.workNumber;
    data['ProductUniqValue'] = this.productUniqValue;
    data['WorkName'] = this.workName;
    data['CustomerName'] = this.customerName;
    data['AuthorizatedPersonName'] = this.authorizatedPersonName;
    data['CurrentUserName'] = this.currentUserName;
    data['DeliveryDate'] = this.deliveryDate;
    data['DeliveryDate2'] = this.deliveryDate2;
    data['DeliveryDateStr'] = this.deliveryDateStr;
    data['DeliveryDate_string'] = this.deliveryDateString;
    data['isImportant'] = this.isImportant;
    data['CustomerWaiting'] = this.customerWaiting;
    data['isWorkComplete'] = this.isWorkComplete;
    data['WorkDescription'] = this.workDescription;
    data['WorkLineID'] = this.workLineID;
    data['WorkLineName'] = this.workLineName;
    data['IsDynamic'] = this.isDynamic;
    data['WorkLineStepName'] = this.workLineStepName;
    data['isInvoice'] = this.isInvoice;
    data['isDispatch'] = this.isDispatch;
    data['isReserved'] = this.isReserved;
    data['isWaitingInvoiced'] = this.isWaitingInvoiced;
    data['isDelivered'] = this.isDelivered;
    data['isDelivering'] = this.isDelivering;
    data['isWaitingShipment'] = this.isWaitingShipment;
    data['isWaitingCargo'] = this.isWaitingCargo;
    data['InvoiceState'] = this.invoiceState;
    data['CustomerRepresentativeID'] = this.customerRepresentativeID;
    data['CreatedUserID'] = this.createdUserID;
    data['CreatedUserNameSurname'] = this.createdUserNameSurname;
    return data;
  }
}