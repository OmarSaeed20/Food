import 'package:json_annotation/json_annotation.dart';
part 'prodcut_model.g.dart';

@JsonSerializable()
class ProductRespo {
  @JsonKey(name: "total_size")
  int? totalSize;
  @JsonKey(name: "type_id")
  int? typeId;
  @JsonKey(name: "offset")
  int? offset;
  @JsonKey(name: "products")
  late List<ProductsResspoModel>? products;

  ProductRespo({this.totalSize, this.typeId, this.offset, this.products});

  factory ProductRespo.fromJson(Map<String, dynamic> json) =>
      _$ProductRespoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductRespoToJson(this);
}

@JsonSerializable()
class ProductsResspoModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "price")
  int? price;
  @JsonKey(name: "stars")
  int? stars;
  @JsonKey(name: "img")
  String? img;
  @JsonKey(name: "location")
  String? location;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  @JsonKey(name: "type_id")
  int? typeId;

  ProductsResspoModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.stars,
      this.img,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.typeId});

  factory ProductsResspoModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsResspoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsResspoModelToJson(this);
}
