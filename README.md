# DummyMart

An example Flutter project that uses [Riverpod], [go_router], [Hive], [flutter_hooks], and [Freezed].

### ⚠ Important Notes
This project uses [DummyJSON] API. Please note that DummyJSON **doesn't apply your changes** when creating, updating, or deleting items. This project correctly implements those actions, but expect no data changes due to these API limitations.

## Features
Each feature demonstrates certain functionalities that are commonly used in a CRUD app.
1. [Products](https://github.com/dhafinrayhan/dummymart/tree/master/lib/features/products): Basic **"view all items"** and **"view item details"** functionality. Also implements **"pull-to-refresh"** mechanism.
2. [Todos](https://github.com/dhafinrayhan/dummymart/tree/master/lib/features/todos): Full CRUD operations, including **"add item"**, **"edit item"**, and **"delete item"**.
3. [Posts](https://github.com/dhafinrayhan/dummymart/tree/master/lib/features/posts): More advanced read operations such as **"search as we type (with debounce)"** and **"infinite scrolling"**.
4. [Auth](https://github.com/dhafinrayhan/dummymart/tree/master/lib/features/auth): Managing auth states, allowing functionalities such as **"invalidate all data when logging out"** and **"redirect screens based on the auth state"**.

## Routes
```
Full paths for routes:
  => /
  => /login
  => /products
  =>   /products/:id
  => /todos
  =>   /todos/add
  =>   /todos/:id
  =>     /todos/:id/update
  => /profile
```

## Setup
1. Run `flutter pub get` to get dependencies.
1. Run `dart run build_runner build` to generate required files. You can also run `dart run build_runner watch` to generate files and let [build_runner] watch for changes and rebuild if necessary.

## Credentials
Use these credentials to login:

```
username: kminchelle
password: 0lelplR
```
```
username: umcgourty9
password: i0xzpX
```

Or you can use any user credentials from here: https://dummyjson.com/users

## Screenshots
|||||
|----|----|----|----|
| ![View all todos] | ![View a single todo] | ![Add todo] | ![Update todo] |
| ![Login] | ![Profile] | ![View all products] | ![View a single product] |


  [riverpod]: https://pub.dev/packages/riverpod
  [flutter_hooks]: https://pub.dev/packages/flutter_hooks
  [freezed]: https://pub.dev/packages/freezed
  [hive]: https://pub.dev/packages/hive
  [go_router]: https://pub.dev/packages/go_router
  [build_runner]: https://pub.dev/packages/build_runner
  [DummyJSON]: https://dummyjson.com/

  [View all todos]: https://github.com/dhafinrayhan/dummymart/assets/49405411/02fb9cc4-4252-4acc-ae59-84d1500a7de5
  [View a single todo]: https://github.com/dhafinrayhan/dummymart/assets/49405411/b5203d1c-8030-42bf-b8c4-cc2ff90c6bdb
  [Add todo]: https://github.com/dhafinrayhan/dummymart/assets/49405411/7a901a1b-df57-4ad8-8c70-93838a9b162d
  [Update todo]: https://github.com/dhafinrayhan/dummymart/assets/49405411/7696ab81-7c58-4833-9607-277725219dc2

  [Login]: https://github.com/dhafinrayhan/dummymart/assets/49405411/15c235f4-0e2d-4a4c-9060-7569c7f953e7
  [Profile]: https://github.com/dhafinrayhan/dummymart/assets/49405411/4ddaaa6e-ca48-4674-a49a-8fd7be0d2859
  [View all products]: https://github.com/dhafinrayhan/dummymart/assets/49405411/253f5167-cf83-4414-b6b5-cecb2cba6403
  [View a single product]: https://github.com/dhafinrayhan/dummymart/assets/49405411/a05010b9-db74-47f0-8ae1-bcfca54a5d15
