import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:licensehome/shared/model/guest.dart';
import 'package:licensehome/shared/model/notification.dart';

import 'package:licensehome/shared/model/resident.dart';

enum Collection {
  users,
  guests,
  notifications;

  CollectionReference collection<T>() {
    switch (this) {
      case Collection.users:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<Resident>(
              fromFirestore: (snapshot, options) =>
                  Resident.fromJson(snapshot.data() ?? {})
                      .copyWith(id: snapshot.id),
              toFirestore: (value, options) {
                final data = value.toJson();
                data.remove('id');
                return data;
              },
            );
      case Collection.guests:
        return FirebaseFirestore.instance.collection(name).withConverter<Guest>(
              fromFirestore: (snapshot, options) =>
                  Guest.fromJson(snapshot.data() ?? {}).copyWith(
                id: snapshot.id,
              ),
              toFirestore: (value, options) {
                final data = value.toJson();
                data.remove('id');
                return data;
              },
            );
      case Collection.notifications:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<ResidentNotification>(
              fromFirestore: (snapshot, options) =>
                  ResidentNotification.fromJson(snapshot.data() ?? {}),
              toFirestore: (value, options) {
                final data = value.toJson();
                data.remove('id');
                return data;
              },
            );
    }
  }
}
