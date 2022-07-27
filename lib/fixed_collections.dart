import 'dart:collection';
import 'dart:math';

///A [List] that is fixed.
class FixedList<E> extends ListBase<E> {
  final List<E> _innerList;

  static const String message = "This list is fixed. You cannot modify it";

  FixedList(Iterable<E> items) : _innerList = List<E>.unmodifiable(items);

  FixedList.empty() : _innerList = List<E>.unmodifiable([]);

  @Deprecated(message)
  @override
  void clear() {
    throw UnsupportedError(message);
  }

  @Deprecated(message)
  @override
  void add(E element) {
    throw UnsupportedError(message);
  }

  @Deprecated(message)
  @override
  void addAll(Iterable<E> iterable) {
    throw UnsupportedError(message);
  }

  @Deprecated(message)
  @override
  bool remove(Object? element) {
    throw UnsupportedError(message);
  }

  @override
  int get length => _innerList.length;
  @Deprecated(message)
  @override
  set length(int length) {
    throw UnsupportedError(message);
  }

  @Deprecated(message)
  @override
  void operator []=(int index, E value) {
    throw UnsupportedError(message);
  }

  @override
  E operator [](int index) => _innerList[index];

  @Deprecated(message)
  @override
  void insert(int index, E element) {
    throw UnsupportedError(message);
  }

  @Deprecated(message)
  @override
  void insertAll(int index, Iterable<E> iterable) {
    throw UnsupportedError(message);
  }

  @Deprecated(message)
  @override
  void fillRange(int start, int end, [E? fill]) {
    throw UnsupportedError(message);
  }

  @Deprecated(message)
  @override
  void sort([int Function(E a, E b)? compare]) {
    throw UnsupportedError(message);
  }

  @Deprecated(message)
  @override
  void shuffle([Random? random]) {
    throw UnsupportedError(message);
  }
}

extension IterableExtensions2<T> on Iterable<T> {
  FixedList<T> toImmutableList() => FixedList<T>(this);
}
