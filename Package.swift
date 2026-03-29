// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Voodoo-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "VoodooAdapter", targets: ["VoodooAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/VoodooTeam/voodooadn-swift-package", exact: "3.15.1"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "VoodooAdapter",
      dependencies: [
        "VoodooAdapterSDK",
        .product(name: "VoodooAdn", package: "voodooadn-swift-package"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "VoodooAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/voodoo-adapter/5.0.0/ISVoodooAdapter5.0.0.zip",
      checksum: "c09f7fbd27535edb074aa79b4ffcfb9cd9161979a8072e7b02cb142160998d3f"
    )
  ]
)
