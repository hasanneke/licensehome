import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:licensehome/shared/model/guest.dart';

import 'package:licensehome/shared/model/resident.dart';

enum Collection {
  users,
  guests;

  CollectionReference collection<T>() {
    switch (this) {
      case Collection.users:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<Resident>(
              fromFirestore: (snapshot, options) =>
                  Resident.fromJson(snapshot.data() ?? {})
                      .copyWith(id: snapshot.id),
              toFirestore: (value, options) => value.toJson(),
            );
      case Collection.guests:
        return FirebaseFirestore.instance.collection(name).withConverter<Guest>(
              fromFirestore: (snapshot, options) =>
                  Guest.fromJson(snapshot.data() ?? {}).copyWith(
                id: snapshot.id,
              ),
              toFirestore: (value, options) => value.toJson(),
            );
    }
  }
}
