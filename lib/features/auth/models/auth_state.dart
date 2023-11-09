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
    allowedPaths: ['/products', '/todos', '/profile'],
  ),
  ;

  const AuthState({
    required this.redirectPath,
    required this.allowedPaths,
  });

  final String redirectPath;
  final List<String> allowedPaths;
}
