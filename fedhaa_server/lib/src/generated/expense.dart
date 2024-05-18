/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Expense extends _i1.TableRow {
  Expense._({
    int? id,
    required this.amount,
    required this.description,
    required this.date,
    required this.category,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  }) : super(id);

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

  static final t = ExpenseTable();

  static const db = ExpenseRepository._();

  double amount;

  String description;

  DateTime date;

  String category;

  int userId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'amount': amount,
      'description': description,
      'date': date,
      'category': category,
      'userId': userId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'amount':
        amount = value;
        return;
      case 'description':
        description = value;
        return;
      case 'date':
        date = value;
        return;
      case 'category':
        category = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'updatedAt':
        updatedAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Expense>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpenseTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Expense>(
      where: where != null ? where(Expense.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Expense?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpenseTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Expense>(
      where: where != null ? where(Expense.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Expense?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Expense>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ExpenseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Expense>(
      where: where(Expense.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Expense row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Expense row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Expense row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpenseTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Expense>(
      where: where != null ? where(Expense.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ExpenseInclude include() {
    return ExpenseInclude._();
  }

  static ExpenseIncludeList includeList({
    _i1.WhereExpressionBuilder<ExpenseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExpenseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExpenseTable>? orderByList,
    ExpenseInclude? include,
  }) {
    return ExpenseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Expense.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Expense.t),
      include: include,
    );
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

class ExpenseTable extends _i1.Table {
  ExpenseTable({super.tableRelation}) : super(tableName: 'expense') {
    amount = _i1.ColumnDouble(
      'amount',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    category = _i1.ColumnString(
      'category',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnDouble amount;

  late final _i1.ColumnString description;

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString category;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        amount,
        description,
        date,
        category,
        userId,
        createdAt,
        updatedAt,
      ];
}

@Deprecated('Use ExpenseTable.t instead.')
ExpenseTable tExpense = ExpenseTable();

class ExpenseInclude extends _i1.IncludeObject {
  ExpenseInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Expense.t;
}

class ExpenseIncludeList extends _i1.IncludeList {
  ExpenseIncludeList._({
    _i1.WhereExpressionBuilder<ExpenseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Expense.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Expense.t;
}

class ExpenseRepository {
  const ExpenseRepository._();

  Future<List<Expense>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpenseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExpenseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExpenseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Expense>(
      where: where?.call(Expense.t),
      orderBy: orderBy?.call(Expense.t),
      orderByList: orderByList?.call(Expense.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Expense?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpenseTable>? where,
    int? offset,
    _i1.OrderByBuilder<ExpenseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExpenseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Expense>(
      where: where?.call(Expense.t),
      orderBy: orderBy?.call(Expense.t),
      orderByList: orderByList?.call(Expense.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Expense?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Expense>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Expense>> insert(
    _i1.Session session,
    List<Expense> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Expense>(
      rows,
      transaction: transaction,
    );
  }

  Future<Expense> insertRow(
    _i1.Session session,
    Expense row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Expense>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Expense>> update(
    _i1.Session session,
    List<Expense> rows, {
    _i1.ColumnSelections<ExpenseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Expense>(
      rows,
      columns: columns?.call(Expense.t),
      transaction: transaction,
    );
  }

  Future<Expense> updateRow(
    _i1.Session session,
    Expense row, {
    _i1.ColumnSelections<ExpenseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Expense>(
      row,
      columns: columns?.call(Expense.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Expense> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Expense>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Expense row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Expense>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ExpenseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Expense>(
      where: where(Expense.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpenseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Expense>(
      where: where?.call(Expense.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
