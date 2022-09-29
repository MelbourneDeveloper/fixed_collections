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
  bool any(bool Function(E element) test) => _innerSet.any(test);

  @override
  Set<R> cast<R>() => _innerSet.cast();

  @override
  bool contains(Object? element) => _innerSet.contains(element);

  @override
  bool containsAll(Iterable<Object?> other) => _innerSet.containsAll(other);

  @override
  Set<E> difference(Set<Object?> other) => _innerSet.difference(other);

  @override
  E elementAt(int index) => _innerSet.elementAt(index);

  @override
  bool every(bool Function(E element) f) => _innerSet.every(f);

  @override
  Iterable<T> expand<T>(Iterable<T> Function(E element) f) =>
      _innerSet.expand(f);

  @override
  E get first => throw UnsupportedError(cantModifyErrorMessage);
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

  @override
  E firstWhere(bool Function(E value) test, {E Function()? orElse}) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @override
  T fold<T>(T initialValue, T Function(T previousValue, E element) combine) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @override
  Iterable<E> followedBy(Iterable<E> other) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @override
  void forEach(void Function(E element) f) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @override
  Set<E> intersection(Set<Object?> other) =>
      throw UnsupportedError(cantModifyErrorMessage);

  @override
  // TODO: implement isEmpty
  bool get isEmpty => throw UnimplementedError();

  @override
  // TODO: implement isNotEmpty
  bool get isNotEmpty => throw UnimplementedError();

  @override
  // TODO: implement iterator
  Iterator<E> get iterator => throw UnimplementedError();

  @override
  String join([String separator = ""]) {
    // TODO: implement join
    throw UnimplementedError();
  }

  @override
  // TODO: implement last
  E get last => throw UnimplementedError();

  @override
  E lastWhere(bool Function(E value) test, {E Function()? orElse}) {
    // TODO: implement lastWhere
    throw UnimplementedError();
  }

  @override
  // TODO: implement length
  int get length => throw UnimplementedError();

  @override
  E? lookup(Object? element) {
    // TODO: implement lookup
    throw UnimplementedError();
  }

  @override
  Iterable<T> map<T>(T Function(E element) f) {
    // TODO: implement map
    throw UnimplementedError();
  }

  @override
  E reduce(E Function(E value, E element) combine) {
    // TODO: implement reduce
    throw UnimplementedError();
  }

  @override
  bool remove(Object? value) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  void removeAll(Iterable<Object?> elements) {
    // TODO: implement removeAll
  }

  @override
  void removeWhere(bool Function(E element) test) {
    // TODO: implement removeWhere
  }

  @override
  void retainAll(Iterable<Object?> elements) {
    // TODO: implement retainAll
  }

  @override
  void retainWhere(bool Function(E element) test) {
    // TODO: implement retainWhere
  }

  @override
  // TODO: implement single
  E get single => throw UnimplementedError();

  @override
  E singleWhere(bool Function(E value) test, {E Function()? orElse}) {
    // TODO: implement singleWhere
    throw UnimplementedError();
  }

  @override
  Iterable<E> skip(int n) {
    // TODO: implement skip
    throw UnimplementedError();
  }

  @override
  Iterable<E> skipWhile(bool Function(E value) test) {
    // TODO: implement skipWhile
    throw UnimplementedError();
  }

  @override
  Iterable<E> take(int n) {
    // TODO: implement take
    throw UnimplementedError();
  }

  @override
  Iterable<E> takeWhile(bool Function(E value) test) {
    // TODO: implement takeWhile
    throw UnimplementedError();
  }

  @override
  List<E> toList({bool growable = true}) {
    // TODO: implement toList
    throw UnimplementedError();
  }

  @override
  Set<E> toSet() {
    // TODO: implement toSet
    throw UnimplementedError();
  }

  @override
  Set<E> union(Set<E> other) {
    // TODO: implement union
    throw UnimplementedError();
  }

  @override
  Iterable<E> where(bool Function(E element) f) {
    // TODO: implement where
    throw UnimplementedError();
  }

  @override
  Iterable<T> whereType<T>() {
    // TODO: implement whereType
    throw UnimplementedError();
  }
}

extension IterableExtensions2<T> on Iterable<T> {
  FixedList<T> toFixedList() => FixedList<T>(this);
}
