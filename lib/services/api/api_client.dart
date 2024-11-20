// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';

import '../../features/login/models/login.dart';
import '../../features/posts/models/post.dart';
import '../../features/products/models/product.dart';
import '../../features/profile/models/profile.dart';
import '../../features/todos/models/todo.dart';

typedef ApiClientException = DioException;
typedef ApiClientResponse<T> = Response<T>;
typedef ApiClientRequestOptions = RequestOptions;
typedef _ResponseData = Map<String, Object?>;

extension ApiClientExceptionX on ApiClientException {
  String? get responseMessage => response?.data?['message'] as String?;
}

/// An API client that makes network requests.
///
/// This class is meant to be seen as a representation of the common API contract
/// or API list (such as Swagger or Postman) given by the backend.
///
/// This class does not maintain authentication state, but rather receive the token
/// from external source.
///
/// When a widget or provider wants to make a network request, it should not
/// instantiate this class, but instead call the provider that exposes an object
/// of this type.
class ApiClient {
  static final BaseOptions _defaultOptions = BaseOptions(
    baseUrl: 'https://dummyjson.com',
  );

  final Dio _httpClient;

  /// Creates an [ApiClient] with default options.
  ApiClient() : _httpClient = Dio(_defaultOptions);

  /// Creates an [ApiClient] with [token] set for authorization.
  ApiClient.withToken(String token)
      : _httpClient = Dio(
          _defaultOptions.copyWith()
            ..headers['Authorization'] = 'Bearer $token',
        );

  @override
  String toString() {
    return "ApiClient(_httpClient.options.headers['Authorization']: ${_httpClient.options.headers['Authorization']})";
  }

  /// Attempts to login with the login [data], returns the token if success.
  Future<String> login(Login data) async {
    final response = await _httpClient.post(
      '/auth/login',
      data: {
        ...data.toJson(),
        'expiresInMins': 43200,
      },
    );

    return response.data['accessToken'] as String;
  }

  Future<Profile> fetchProfile() async {
    final response = await _httpClient.get('/user/me');

    return Profile.fromJson(response.data as _ResponseData);
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

  Future<List<Post>> fetchPosts({String? search, int? limit, int? skip}) async {
    var path = '/posts';
    final queryParameters = <String, dynamic>{};

    if (search != null && search.isNotEmpty) {
      path += '/search';
      queryParameters['q'] = search;
    }
    if (limit != null) {
      queryParameters['limit'] = limit;
    }
    if (skip != null) {
      queryParameters['skip'] = skip;
    }

    final response =
        await _httpClient.get(path, queryParameters: queryParameters);

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
