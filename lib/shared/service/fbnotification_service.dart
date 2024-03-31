import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:licensehome/core/firebase_service.dart';
import 'package:licensehome/shared/model/notification.dart';
import 'package:licensehome/shared/utility/firebase_collections.dart';

class FBNotificationService extends FirebaseService<ResidentNotification> {
  FBNotificationService()
      : super(
          reference: Collection.notifications.collection()
              as CollectionReference<ResidentNotification>,
        );
}
