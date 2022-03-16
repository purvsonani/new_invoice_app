
import 'package:json_annotation/json_annotation.dart';
import 'data_model.dart';
part 'invoice_model.g.dart';

@JsonSerializable()
class InvoiceModel{

  @JsonKey(name: 'data')
  DataModel data;

  InvoiceModel(this.data);

  factory InvoiceModel.fromJson(Map<String, dynamic> json) => _$InvoiceModelFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceModelToJson(this);

}