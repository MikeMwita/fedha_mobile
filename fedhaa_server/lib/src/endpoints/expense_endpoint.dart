import 'package:fedhaa_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ExpenseEndpoint extends Endpoint {
  Future<List<Expense>> list(Session session) async {
    return Expense.db.find(session);
  }

  Future<Expense?> retrieve(Session session, int id) async {
    return Expense.db.findById(session, id);
  }

  Future<Expense> save(Session session, Expense expense) async {
    return await (expense.id != null
        ? Expense.db.updateRow(session, expense)
        : Expense.db.insertRow(session, expense));
  }

  Future<void> delete(Session session, int id) async {
    await Expense.db.deleteWhere(session, where: (row) => row.id.equals(id));
  }
}
