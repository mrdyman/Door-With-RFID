import 'package:door_with_rfid/models/history.dart';
import 'package:door_with_rfid/models/objectbox.g.dart';
import 'package:door_with_rfid/models/user.dart';

import 'objectbox_admin.dart';

class DbHelper {
  static void truncateHistory() {
    Store store = ObjectboxAdmin.store_;
    store.box<History>().removeAll();
  }

  /// Params:
  /// - List of History Data
  static bool putHistory({required List<History> histories}) {
    Store store = ObjectboxAdmin.store_;
    List<History> data = [];

    // Get a Set of existing IDs from the database and tempData
    final existingIds = store.box<History>().getAll().map((e) => e.id).toSet();
    final tempIds = histories.map((e) => e.id).toSet();
    existingIds.addAll(tempIds);

    int maxExistingId = existingIds
        .where((id) => id != null)
        .fold(0, (maxId, id) => id! > maxId ? id : maxId);

    // Start generating IDs from the next available number
    int nextId = maxExistingId + 1;

    for (var mItem in histories) {
      while (existingIds.contains(nextId)) {
        nextId++;
      }
      data.add(mItem.copyWith(id: mItem.id ?? nextId));
      existingIds.add(nextId); // Mark this ID as taken
      nextId++; // Move to the next available ID
    }
    return store.box<History>().putMany(data).isNotEmpty;
  }

  /// Get History
  /// PARAMS :
  /// id (Optional)
  static List<History> getHistory({int? id, String? uuid}) {
    Store store = ObjectboxAdmin.store_;
    List<History> data = store.box<History>().getAll();

    if (id != null) {
      data.retainWhere((e) => e.id == id);
    }

    if (uuid != null) {
      data.retainWhere((e) => e.uuid == uuid);
    }

    return data;
  }

  /// Params:
  /// - id
  static Future<bool> deleteHistory({required List<int> id}) async {
    Store store = ObjectboxAdmin.store_;
    return store.box<History>().removeMany(id) != 0;
  }

  // ? User
  static void truncateUser() {
    Store store = ObjectboxAdmin.store_;
    store.box<User>().removeAll();
  }

  /// Params:
  /// - List of User Data
  static bool putUser({required List<User> users}) {
    Store store = ObjectboxAdmin.store_;
    List<User> data = [];

    // Get a Set of existing IDs from the database and tempData
    final existingIds = store.box<User>().getAll().map((e) => e.id).toSet();
    final tempIds = users.map((e) => e.id).toSet();
    existingIds.addAll(tempIds);

    int maxExistingId = existingIds
        .where((id) => id != null)
        .fold(0, (maxId, id) => id! > maxId ? id : maxId);

    // Start generating IDs from the next available number
    int nextId = maxExistingId + 1;

    for (var mItem in users) {
      while (existingIds.contains(nextId)) {
        nextId++;
      }
      data.add(mItem.copyWith(id: mItem.id ?? nextId));
      existingIds.add(nextId); // Mark this ID as taken
      nextId++; // Move to the next available ID
    }
    return store.box<User>().putMany(data).isNotEmpty;
  }

  /// Get User
  /// PARAMS :
  /// id (Optional)
  static List<User> getUser({int? id, String? uuid}) {
    Store store = ObjectboxAdmin.store_;
    List<User> data = store.box<User>().getAll();

    if (id != null) {
      data.retainWhere((e) => e.id == id);
    }

    if (uuid != null) {
      data.retainWhere((e) => e.uuid == uuid);
    }

    return data;
  }

  /// Params:
  /// - id
  static Future<bool> deleteUser({required List<int> id}) async {
    Store store = ObjectboxAdmin.store_;
    return store.box<User>().removeMany(id) != 0;
  }
}
