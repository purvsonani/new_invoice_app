import'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

import 'package:json_annotation/json_annotation.dart';
part 'data_model.g.dart';



  @JsonSerializable()
  class DataModel {
  @JsonKey(name: 'invoice_date')
  String invoiceDate;

  @JsonKey(name: 'due_date')
  String dueDate;

  @JsonKey(name: 'company_invoice_id')
  int? invoiceId;

  @JsonKey(name: 'term_name')
  String terms;

  @JsonKey(name: 'allow_online_payment')
  String onlinePayment;

  @JsonKey(name: 'project_name')
  String projectName;

  @JsonKey(name: 'approval_type_name')
  String status;

  DataModel(this.status, this.dueDate, this.invoiceDate, this.invoiceId,
  this.onlinePayment, this.terms, this.projectName);


  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
  Map<String, dynamic> toJson() => _$DataModelToJson(this);
  }



