// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayMolocoAdapterCompatibility",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "LevelPlayMolocoAdapter", targets: ["LevelPlayMolocoAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Moloco-Adapter-Swift-Package.git", exact: "5.19.0"),
    ],
    targets: [
        .target(
            name: "LevelPlayMolocoAdapterWrapper",
            dependencies: [
                .product(
                    name: "MolocoAdapter",
                    package: "LevelPlay-Moloco-Adapter-Swift-Package",
                    moduleAliases: ["MolocoAdapter": "LevelPlayMolocoAdapterTarget"]
                ),
            ]
        ),
    ]
)
