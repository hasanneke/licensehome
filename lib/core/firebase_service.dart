// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:licensehome/core/general_service.dart';

abstract class FirebaseService<T> implements GeneralService<T> {
  CollectionReference<T> reference;
  FirebaseService({
    required this.reference,
  });
  @override
  Future<List<T>> fetch({List<GeneralFilter> filters = const []}) async {
    Query<T> query = reference;
    if (filters.isNotEmpty) {
      for (var filter in filters) {
        switch (filter.filter) {
          case FireFilter.isEqualTo:
            query = reference.where(filter.field, isEqualTo: filter.value);
          case FireFilter.arrayContains:
            query = reference.where(filter.field, arrayContains: filter.value);
          case FireFilter.arrayContainsAny:
            query =
                reference.where(filter.field, arrayContainsAny: filter.value);
          case FireFilter.isGreaterThan:
            query = reference.where(filter.field, isGreaterThan: filter.value);
          case FireFilter.isGreaterThanOrEqualTo:
            query = reference.where(filter.field,
                isGreaterThanOrEqualTo: filter.value);
          case FireFilter.isLessThan:
            query = reference.where(filter.field, isLessThan: filter.value);
          case FireFilter.isLessThanOrEqualTo:
            query = reference.where(filter.field,
                isLessThanOrEqualTo: filter.value);
          case FireFilter.isNotEqualTo:
            query = reference.where(filter.field, isNotEqualTo: filter.value);
          case FireFilter.isNull:
            query = reference.where(filter.field, isNull: filter.value);
          case FireFilter.whereIn:
            query = reference.where(filter.field, whereIn: filter.value);
          case FireFilter.whereNotIn:
            query = reference.where(filter.field, whereNotIn: filter.value);
        }
      }
    }
    return await query
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  @override
  Future<T?> create(T data) async {
    final res = await reference.add(data).then((value) => value.get());
    return res.data();
  }

  @override
  Future<void> update(String id, T data) async {
    await reference.doc(id).set(data);
  }

  @override
  Future<void> delete(String id) async {
    await reference.doc(id).delete();
  }

  @override
  Future<T?> get(String id) async {
    return await reference.doc(id).get().then((value) => value.data());
  }

  @override
  Stream<List<T>> stream({List<GeneralFilter> filters = const []}) {
    Query<T> query = reference;
    if (filters.isNotEmpty) {
      for (var filter in filters) {
        switch (filter.filter) {
          case FireFilter.isEqualTo:
            query = reference.where(filter.field, isEqualTo: filter.value);
          case FireFilter.arrayContains:
            query = reference.where(filter.field, arrayContains: filter.value);
          case FireFilter.arrayContainsAny:
            query =
                reference.where(filter.field, arrayContainsAny: filter.value);
          case FireFilter.isGreaterThan:
            query = reference.where(filter.field, isGreaterThan: filter.value);
          case FireFilter.isGreaterThanOrEqualTo:
            query = reference.where(filter.field,
                isGreaterThanOrEqualTo: filter.value);
          case FireFilter.isLessThan:
            query = reference.where(filter.field, isLessThan: filter.value);
          case FireFilter.isLessThanOrEqualTo:
            query = reference.where(filter.field,
                isLessThanOrEqualTo: filter.value);
          case FireFilter.isNotEqualTo:
            query = reference.where(filter.field, isNotEqualTo: filter.value);
          case FireFilter.isNull:
            query = reference.where(filter.field, isNull: filter.value);
          case FireFilter.whereIn:
            query = reference.where(filter.field, whereIn: filter.value);
          case FireFilter.whereNotIn:
            query = reference.where(filter.field, whereNotIn: filter.value);
        }
      }
    }
    return query
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }
}

class GeneralFilter {
  final String field;
  final FireFilter filter;
  final dynamic value;
  GeneralFilter({
    required this.field,
    required this.filter,
    required this.value,
  });
}

enum FireFilter {
  isEqualTo,
  isNotEqualTo,
  isLessThan,
  isLessThanOrEqualTo,
  isGreaterThan,
  isGreaterThanOrEqualTo,
  arrayContains,
  arrayContainsAny,
  whereIn,
  whereNotIn,
  isNull;
}
