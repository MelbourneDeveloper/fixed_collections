#unmodifiable_collections

This library contains collections that are unmodifiable. You pass an iterable in to the constructor and you get a list that you cannot modify. More importantly, all the members that modify the list are deprecated so you get a warning or error at compile time. Use this library with the deprecated_member_use_from_same_package [code analysis](https://dart.dev/guides/language/analysis-options) option on.


