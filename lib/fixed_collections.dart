import 'dart:collection';
import 'dart:math';

///A [List] that is fixed.
class FixedList<E> extends ListBase<E> {
  final List<E> _innerList;

  static const String cantModifyErrorMessage =
      "This list is fixed. You cannot modify it";
  static const _equalityErrorMessage =
      'Please use ListEquality in the collections package to compare '
      'list equality';
  static const _hashErrorMessage =
      'Please manually calculate the hash of this list, or use the collections'
      ' package to compare list equality';

  FixedList(Iterable<E> items) : _innerList = List<E>.unmodifiable(items);

  FixedList.empty() : _innerList = List<E>.unmodifiable([]);

  @Deprecated(cantModifyErrorMessage)
  @override
  void clear() {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  void add(E element) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  void addAll(Iterable<E> iterable) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  bool remove(Object? element) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  E removeAt(int index) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  E removeLast() {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  E removeRange(int start, int end) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  E removeWhere(bool Function(E element) test) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  E replaceRange(int start, int end, Iterable<E> newContents) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  E retainWhere(bool Function(E element) test) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  void setAll(int index, Iterable<E> iterable) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @override
  int get length => _innerList.length;
  @Deprecated(cantModifyErrorMessage)
  @override
  set length(int length) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  void operator []=(int index, E value) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @override
  E operator [](int index) => _innerList[index];

  @Deprecated(_equalityErrorMessage)
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      throw UnsupportedError(_equalityErrorMessage);

  @Deprecated(_hashErrorMessage)
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => throw UnsupportedError(_hashErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void insert(int index, E element) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  void insertAll(int index, Iterable<E> iterable) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  void fillRange(int start, int end, [E? fill]) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  void sort([int Function(E a, E b)? compare]) {
    throw UnsupportedError(cantModifyErrorMessage);
  }

  @Deprecated(cantModifyErrorMessage)
  @override
  void shuffle([Random? random]) {
    throw UnsupportedError(cantModifyErrorMessage);
  }
}

extension IterableExtensions2<T> on Iterable<T> {
  FixedList<T> toFixedList() => FixedList<T>(this);
}
