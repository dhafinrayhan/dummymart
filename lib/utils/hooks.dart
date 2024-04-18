import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef AsyncTask = ({
  ValueNotifier<Future<void>?> pending,
  AsyncSnapshot<void> snapshot,
  bool hasError,
});

/// Creates a hook that provides an [AsyncSnapshot] of the pending asynchronous
/// task and an error flag.
AsyncTask useAsyncTask() {
  final pending = useState<Future<void>?>(null);
  final snapshot = useFuture(pending.value);
  final hasError =
      snapshot.hasError && snapshot.connectionState != ConnectionState.waiting;

  return (pending: pending, snapshot: snapshot, hasError: hasError);
}
