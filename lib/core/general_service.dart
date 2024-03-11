import 'package:licensehome/core/firebase_service.dart';

abstract class GeneralService<T> {
  Future<List<T>> fetch({List<GeneralFilter> filters = const []});

  Future<T?> create(T data);
  Future<void> update(String id, T data);

  Future<void> delete(String id);
  Future<T?> get(String id);
}
