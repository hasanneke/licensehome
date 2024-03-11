import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:licensehome/core/firebase_service.dart';
import 'package:licensehome/shared/model/resident.dart';
import 'package:licensehome/shared/utility/firebase_collections.dart';

class FBResidentService extends FirebaseService<Resident> {
  FBResidentService()
      : super(
          reference:
              Collection.users.collection() as CollectionReference<Resident>,
        );
}
