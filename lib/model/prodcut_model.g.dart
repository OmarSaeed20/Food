// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prodcut_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRespo _$ProductRespoFromJson(Map<String, dynamic> json) => ProductRespo(
      totalSize: json['total_size'] as int?,
      typeId: json['type_id'] as int?,
      offset: json['offset'] as int?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductsResspoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductRespoToJson(ProductRespo instance) =>
    <String, dynamic>{
      'total_size': instance.totalSize,
      'type_id': instance.typeId,
      'offset': instance.offset,
      'products': instance.products,
    };

ProductsResspoModel _$ProductsResspoModelFromJson(Map<String, dynamic> json) =>
    ProductsResspoModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      stars: json['stars'] as int?,
      img: json['img'] as String?,
      location: json['location'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      typeId: json['type_id'] as int?,
    );

Map<String, dynamic> _$ProductsResspoModelToJson(
        ProductsResspoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stars': instance.stars,
      'img': instance.img,
      'location': instance.location,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'type_id': instance.typeId,
    };
