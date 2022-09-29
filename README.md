# fixed_collections
This library contains fixed (immutable) collections. You pass an `Iterable`, `Set` or `Map` into the constructor and get a collection you cannot modify. More importantly, all the members that modify the list are deprecated, so you get a warning or error at compile time. Use this library with the `deprecated_member_use_from_same_package` [code analysis option](https://dart.dev/guides/language/analysis-options).

## Why Use This Library?
The collections in this library are normal `Lists`, `Sets` and `Maps`, unlike other immutable collections. They implement the interfaces for these. You can pass them around in your app and pass them to external functions that accept these collections as parameters, but if your code mutates the list, you will see warnings. 

<img width="1126" alt="image" src="https://user-images.githubusercontent.com/16697547/181145179-88637b46-39ab-4cdc-9cfe-64e4337ee088.png">

## Errors

Turn on the rule `deprecated_member_use_from_same_package` by adding it to your `analysis_options.yaml` file. Or, use the [austerity](https://pub.dev/packages/austerity) package to make your Dart experience much more strict.

```yaml
analyzer:
  errors:
    deprecated_member_use_from_same_package: error
```

If you want a less severe warning, you can use `warning` instead of `error`.

```yaml
analyzer:
  errors:
    deprecated_member_use_from_same_package: warning
```

Read more about customizing analysis errors [here](https://dart.dev/guides/language/analysis-options#customizing-analysis-rules).

