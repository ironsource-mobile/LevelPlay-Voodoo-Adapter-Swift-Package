// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Voodoo-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "VoodooAdapter", targets: ["VoodooAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/VoodooTeam/voodooadn-swift-package", exact: "3.16.3"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "VoodooAdapter",
      dependencies: [
        "VoodooAdapterSDK",
        .product(name: "VoodooAdn", package: "voodooadn-swift-package"),
        .product(name: "OMSDK_Voodooio", package: "voodooadn-swift-package"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "VoodooAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/voodoo-adapter/5.1.0/ISVoodooAdapter5.1.0.zip",
      checksum: "7e2d3409f0d23039600b4e40cddadc666f3b8700dbbbaa1a771ca8a5c7e169a1"
    )
  ]
)
