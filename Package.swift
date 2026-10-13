// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Voodoo-Adapter-Swift-Package",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "VoodooAdapter", targets: ["VoodooAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/VoodooADN/ios-sdk-swiftpackage", exact: "3.17.2"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/voodoo-adapter/5.5.1/ISVoodooAdapter5.5.1.zip",
      checksum: "c0df9f0cd76b2a5269d004ee012d87e246027f5307761008fc14a5d8033dc06c"
    )
  ]
)
