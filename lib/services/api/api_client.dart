import 'package:dio/dio.dart';

import '../../features/auth/models/login.dart';
import '../../features/posts/models/post.dart';
import '../../features/products/models/product.dart';
import '../../features/profile/models/profile.dart';
import '../../features/todos/models/todo.dart';

typedef ApiClientException = DioException;
typedef _ResponseData = Map<String, Object?>;

class ApiClient {
  final Dio _httpClient;

  ApiClient() : _httpClient = Dio()..options.baseUrl = 'https://dummyjson.com';
  ApiClient._withOptions(BaseOptions options) : _httpClient = Dio(options);

  ApiClient copyWithToken(String token) {
    return ApiClient._withOptions(
        _httpClient.options..headers['Authorization'] = 'Bearer $token');
  }

  Future<(Profile, String)> login(Login data) async {
    final response = await _httpClient.post(
      '/auth/login',
      data: data.toJson(),
    );

    final profile = Profile.fromJson(response.data as _ResponseData);
    final token = response.data['token'] as String;

    return (profile, token);
  }

  Future<List<Product>> fetchProducts() async {
    final response = await _httpClient.get('/products');

    return (response.data['products'] as List)
        .cast<_ResponseData>()
        .map(Product.fromJson)
        .toList();
  }

  Future<Product> fetchProduct(int id) async {
    final response = await _httpClient.get('/products/$id');

    return Product.fromJson(response.data as _ResponseData);
  }

  Future<List<Todo>> fetchTodos() async {
    final response = await _httpClient.get('/todos');

    return (response.data['todos'] as List)
        .cast<_ResponseData>()
        .map(Todo.fromJson)
        .toList();
  }

  Future<Todo> fetchTodo(int id) async {
    final response = await _httpClient.get('/todos/$id');

    return Todo.fromJson(response.data as _ResponseData);
  }

  Future<Todo> addTodo(Todo todo) async {
    final response = await _httpClient.post(
      '/todos/add',
      data: todo.toJson()..remove('id'),
    );

    return Todo.fromJson(response.data as _ResponseData);
  }

  Future<Todo> updateTodo(int id, Todo todo) async {
    final response = await _httpClient.put(
      '/todos/$id',
      data: todo.toJson()..remove('id'),
    );

    return Todo.fromJson(response.data as _ResponseData);
  }

  Future<Todo> deleteTodo(int id) async {
    final response = await _httpClient.delete('/todos/$id');

    return Todo.fromJson(response.data as _ResponseData);
  }

  Future<List<Post>> fetchPosts({String? search}) async {
    String path = '/posts';
    if (search != null && search.isNotEmpty) {
      path += '/search?q=$search';
    }
    final response = await _httpClient.get(path);

    return (response.data['posts'] as List)
        .cast<_ResponseData>()
        .map(Post.fromJson)
        .toList();
  }

  Future<Post> fetchPost(int id) async {
    final response = await _httpClient.get('/posts/$id');

    return Post.fromJson(response.data as _ResponseData);
  }
}
