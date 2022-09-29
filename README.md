# fixed_collections

This library contains fixed (immutable/unmodifiable) collections. You pass an `Iterable`, `Set` or `Map` into the constructor and get a collection you cannot modify. More importantly, all the members that modify the list are deprecated, so you get a warning or error at compile time. Use this library with the `deprecated_member_use_from_same_package` [code analysis option](https://dart.dev/guides/language/analysis-options).

<img width="1126" alt="image" src="https://user-images.githubusercontent.com/16697547/181145179-88637b46-39ab-4cdc-9cfe-64e4337ee088.png">


