import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:licensehome/core/firebase_service.dart';
import 'package:licensehome/shared/model/guest.dart';
import 'package:licensehome/shared/utility/firebase_collections.dart';

class FBGuestService extends FirebaseService<Guest> {
  FBGuestService()
      : super(
          reference:
              Collection.guests.collection() as CollectionReference<Guest>,
        );
}
