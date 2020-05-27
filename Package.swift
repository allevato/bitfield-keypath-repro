// swift-tools-version:5.2

import PackageDescription

let package = Package(
  name: "bitfield-keypath-repro",
  products: [
    .executable(
      name: "bitfield-keypath-repro",
      targets: ["bitfield-keypath-repro"]
    ),
  ],
  targets: [
    .target(name: "bitfield-keypath-repro", dependencies: ["c_module"]),
    .target(name: "c_module"),
  ]
)
