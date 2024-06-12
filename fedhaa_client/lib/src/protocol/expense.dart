/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Expense extends _i1.SerializableEntity {
  Expense._({
    this.id,
    required this.amount,
    required this.description,
    required this.date,
    required this.category,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Expense({
    int? id,
    required double amount,
    required String description,
    required DateTime date,
    required String category,
    required int userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ExpenseImpl;

  factory Expense.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Expense(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      amount:
          serializationManager.deserialize<double>(jsonSerialization['amount']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      category: serializationManager
          .deserialize<String>(jsonSerialization['category']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
      updatedAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  double amount;

  String description;

  DateTime date;

  String category;

  int userId;

  DateTime createdAt;

  DateTime updatedAt;

  Expense copyWith({
    int? id,
    double? amount,
    String? description,
    DateTime? date,
    String? category,
    int? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'amount': amount,
      'description': description,
      'date': date.toJson(),
      'category': category,
      'userId': userId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }
}

class _Undefined {}

class _ExpenseImpl extends Expense {
  _ExpenseImpl({
    int? id,
    required double amount,
    required String description,
    required DateTime date,
    required String category,
    required int userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          amount: amount,
          description: description,
          date: date,
          category: category,
          userId: userId,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Expense copyWith({
    Object? id = _Undefined,
    double? amount,
    String? description,
    DateTime? date,
    String? category,
    int? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Expense(
      id: id is int? ? id : this.id,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      date: date ?? this.date,
      category: category ?? this.category,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
