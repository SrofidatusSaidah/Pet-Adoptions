import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference PetAdopt =
      FirebaseFirestore.instance.collection('PetAdopt');
  Stream<QuerySnapshot> getPetAdopt() {
    final PetAdoptStream = PetAdopt.snapshots();
    return PetAdoptStream;
  }
}
