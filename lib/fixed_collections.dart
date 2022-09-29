import 'dart:collection';
import 'dart:math';

const String cantModifyErrorMessage =
    "This collection is fixed. You cannot modify it";

///A [List] that is fixed.
class FixedList<E> extends ListBase<E> {
  final List<E> _innerList;

  FixedList(Iterable<E> items) : _innerList = List<E>.unmodifiable(items);

  FixedList.empty() : _innerList = List<E>.unmodifiable([]);

  //---------------------------------------------------------------------
  //No mutation
  @override
  E operator [](int index) => _innerList[index];

  @override
  int get length => _innerList.length;
  //---------------------------------------------------------------------

  //---------------------------------------------------------------------
  //Deprecated
  @Deprecated(cantModifyErrorMessage)
  @override
  void clear();

  @Deprecated(cantModifyErrorMessage)
  @override
  void add(E element);

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
  void fillRange(int start, int end, [E? fill]);

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
  //---------------------------------------------------------------------
}

class FixedMap<K, V> extends MapBase<K, V> {
  final Map<K, V> _innerMap;

  FixedMap(Map<K, V> other) : _innerMap = Map<K, V>.unmodifiable(other);

  FixedMap.empty() : _innerMap = Map<K, V>.unmodifiable({});

  //---------------------------------------------------------------------
  //No mutation
  @override
  V? operator [](Object? key) => _innerMap[key];

  @override
  Iterable<K> get keys => _innerMap.keys;
  //---------------------------------------------------------------------

  //---------------------------------------------------------------------
  //Deprecated
  @Deprecated(cantModifyErrorMessage)
  @override
  void operator []=(K key, V value) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void addAll(Map<K, V> other);

  @Deprecated(cantModifyErrorMessage)
  @override
  void addEntries(Iterable<MapEntry<K, V>> newEntries);

  @Deprecated(cantModifyErrorMessage)
  @override
  void clear() => throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  V putIfAbsent(K key, V Function() ifAbsent) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  V? remove(Object? key) => throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void removeWhere(bool Function(K key, V value) test) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  V update(K key, V Function(V value) update, {V Function()? ifAbsent}) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void updateAll(V Function(K key, V value) update) =>
      throw UnsupportedError(cantModifyErrorMessage);
}

class FixedSet<E> extends SetBase<E> {
  final Set<E> _innerSet;

  FixedSet(Set<E> other) : _innerSet = Set<E>.unmodifiable(other);

  FixedSet.empty() : _innerSet = Set<E>.unmodifiable({});

  //---------------------------------------------------------------------
  //No mutation
  @override
  bool contains(Object? element) => _innerSet.contains(element);
  //---------------------------------------------------------------------

  //---------------------------------------------------------------------
  //Deprecated
  @Deprecated(cantModifyErrorMessage)
  @override
  bool add(E value) => throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void addAll(Iterable<E> elements) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void clear() => throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  bool remove(Object? value) => throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void removeAll(Iterable<Object?> elements) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void removeWhere(bool Function(E element) test) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void retainAll(Iterable<Object?> elements) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @Deprecated(cantModifyErrorMessage)
  @override
  void retainWhere(bool Function(E element) test) =>
      throw UnsupportedError(cantModifyErrorMessage);
}

extension IterableExtensions2<T> on Iterable<T> {
  FixedList<T> toFixedList() => FixedList<T>(this);
}
