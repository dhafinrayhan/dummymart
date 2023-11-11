enum AuthState {
  unknown(
    redirectPath: '/',
    allowedPaths: ['/'],
  ),
  unauthenticated(
    redirectPath: '/login',
    allowedPaths: ['/login'],
  ),
  authenticated(
    redirectPath: '/products',
    allowedPaths: [
      '/products',
      '/products/:id',
      '/todos',
      '/todos/add',
      '/profile',
    ],
  ),
  ;

  const AuthState({
    required this.redirectPath,
    required this.allowedPaths,
  });

  final String redirectPath;
  final List<String> allowedPaths;
}
