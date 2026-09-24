// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Voodoo-Adapter-Swift-Package",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "VoodooAdapter", targets: ["VoodooAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/VoodooADN/ios-sdk-swiftpackage", exact: "4.30.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "VoodooAdapter",
      dependencies: [
        "VoodooAdapterSDK",
        .product(name: "VoodooAdn", package: "ios-sdk-swiftpackage"),
        .product(name: "OMSDK_Voodooio", package: "ios-sdk-swiftpackage"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "VoodooAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/voodoo-adapter/5.6.0/ISVoodooAdapter5.6.0.zip",
      checksum: "a7f9b50725fdf43846384bb407bc8172ceeaa3ad871ab50a17e37b3553a318e4"
    )
  ]
)
