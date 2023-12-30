import 'package:door_with_rfid/models/objectbox.g.dart';

class ObjectboxAdmin {
  late final Store store;
  late final Admin admin;
  static late Store store_;
  static late Admin admin_;
  static bool init = false;

  ObjectboxAdmin._create(this.store) {
    store_ = store;
    if (Admin.isAvailable()) {
      admin = Admin(store_);
      admin_ = admin;
    }
    init = true;
  }

  static Future<ObjectboxAdmin> create() async {
    if (await isStoreOpen()) {
      admin_.close();
      store_.close();
    }
    final store = await openStore();
    return ObjectboxAdmin._create(store);
  }

  static Future<bool> isStoreOpen() async {
    if (init) {
      return true;
    }
    return false;
  }
}
