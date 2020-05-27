# bitfield-keypath-repro

Repro case for a bug where a keypath referencing a bitfield in an imported
C struct causes a linker error.

## How to reproduce

1. Clone this repo.
2. Run `swift build`.

## Expected behavior

Builds successfully.

## Actual behavior

```
$ swift build | xcrun swift-demangle

[1/2] Compiling bitfield-keypath-repro main.swift
[2/3] Merging module bitfield-keypath-repro
Undefined symbols for architecture x86_64:
  "@nonobjc __C.SomeCStruct.bitField.getter : Swift.Int32", referenced from:
      l_keypath.2 in main.swift.o
ld: symbol(s) not found for architecture x86_64
[2/3] Linking bitfield-keypath-repro
```
