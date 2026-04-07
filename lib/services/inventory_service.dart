import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/item.dart';

class InventoryService {
  final CollectionReference itemsRef =
      FirebaseFirestore.instance.collection('items');

  Future<void> addItem(Item item) async {
    await itemsRef.add(item.toMap());
  }

  Future<void> updateItem(Item item) async {
    await itemsRef.doc(item.id).update(item.toMap());
  }

  Future<void> deleteItem(String id) async {
    await itemsRef.doc(id).delete();
  }

  Stream<List<Item>> streamItems() {
    return itemsRef.snapshots().map(
          (snap) => snap.docs
              .map((d) => Item.fromMap(d.id, d.data() as Map<String, dynamic>))
              .toList(),
        );
  }
}
