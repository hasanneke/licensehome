// Define the JSON Converter
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  // From Firestore Timestamp to Dart DateTime
  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  // From Dart DateTime to Firestore Timestamp for serialization
  @override
  Timestamp toJson(DateTime dateTime) {
    return Timestamp.fromDate(dateTime);
  }
}
