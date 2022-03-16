// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      json['approval_type_name'] as String,
      json['due_date'] as String,
      json['invoice_date'] as String,
      json['company_invoice_id'] as int?,
      json['allow_online_payment'] as String,
      json['term_name'] as String,
      json['project_name'] as String,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'invoice_date': instance.invoiceDate,
      'due_date': instance.dueDate,
      'company_invoice_id': instance.invoiceId,
      'term_name': instance.terms,
      'allow_online_payment': instance.onlinePayment,
      'project_name': instance.projectName,
      'approval_type_name': instance.status,
    };
