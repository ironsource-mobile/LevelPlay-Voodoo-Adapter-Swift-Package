// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Voodoo-Adapter-Swift-Package",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "VoodooAdapter", targets: ["VoodooAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/VoodooADN/ios-sdk-swiftpackage", exact: "4.30.2"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/voodoo-adapter/5.8.0/ISVoodooAdapter5.8.0.zip",
      checksum: "f6b84708d042f4512ec45f5a44f75c0d7864c48b1c0667c251533d6e01c0df61"
    )
  ]
)
