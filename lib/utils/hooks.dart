import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Similar to [useTextEditingController], with the additional [onChanged]
/// parameter to pass a callback for when the [TextEditingController.value] is
/// changed.
TextEditingController useTextEditingControllerWithValueChangedCallback({
  String? text,
  List<Object?>? keys,
  required ValueChanged<TextEditingValue> onChanged,
}) {
  final controller = useTextEditingController(text: text, keys: keys);
  useOnValueChanged(controller, onChanged);
  return controller;
}

/// Listens to a value and triggers a callback when the value changed.
void useOnValueChanged<T>(
  ValueNotifier<T> valueNotifier,
  ValueChanged<T> onChanged,
) {
  void listener() => onChanged(valueNotifier.value);
  useEffect(() {
    valueNotifier.addListener(listener);
    return () => valueNotifier.removeListener(listener);
  }, []);
}
