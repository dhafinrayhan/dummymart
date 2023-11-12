import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/auth/models/login.dart';
import '../features/products/models/product.dart';
import '../features/profile/models/profile.dart';
import '../features/todos/models/todo.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
class ApiClient extends _$ApiClient {
  @override
  Dio build() => Dio()..options.baseUrl = 'https://dummyjson.com';

  void setToken(String token) {
    state = Dio(state.options)
      ..options.headers['Authorization'] = 'Bearer $token';
  }

  Future<Profile> login(Login data) async {
    final response = await state.post(
      '/auth/login',
      data: data.toJson(),
    );

    final token = response.data['token'] as String;
    setToken(token);

    // Save the new [token] to Hive box.
    final box = Hive.box<String>('token');
    box.put('current', token);

    return Profile.fromJson(response.data as Map<String, Object?>);
  }

  void logout() {
    // Delete the current [token] from Hive box.
    final box = Hive.box<String>('token');
    box.delete('current');

    ref.invalidateSelf();
  }

  Future<List<Product>> fetchProducts() async {
    final response = await state.get('/products');

    return (response.data['products'] as List)
        .cast<Map<String, Object?>>()
        .map(Product.fromJson)
        .toList();
  }

  Future<Product> fetchProduct(int id) async {
    final response = await state.get('/products/$id');

    return Product.fromJson(response.data as Map<String, Object?>);
  }

  Future<List<Todo>> fetchTodos() async {
    final response = await state.get('/todos');

    return (response.data['todos'] as List)
        .cast<Map<String, Object?>>()
        .map(Todo.fromJson)
        .toList();
  }

  Future<Todo> fetchTodo(int id) async {
    final response = await state.get('/todos/$id');

    return Todo.fromJson(response.data as Map<String, Object?>);
  }

  Future<Todo> addTodo(Todo todo) async {
    final response = await state.post(
      '/todos/add',
      data: todo.toJson()..remove('id'),
    );

    return Todo.fromJson(response.data as Map<String, Object?>);
  }

  Future<Todo> updateTodo(int id, Todo todo) async {
    final response = await state.put(
      '/todos/$id',
      data: todo.toJson()..remove('id'),
    );

    return Todo.fromJson(response.data as Map<String, Object?>);
  }

  Future<Todo> deleteTodo(int id) async {
    final response = await state.delete('/todos/$id');

    return Todo.fromJson(response.data as Map<String, Object?>);
  }
}
