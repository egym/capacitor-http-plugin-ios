// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "HTTP Plugin Package",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "HTTPPlugin",
            targets: ["HTTPPlugin"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/ionic-team/capacitor-swift-pm",
            .upToNextMajor(from: "4.6.3")
        ),
    ],
    targets: [
        .target(
            name: "CHTTPPlugin",
            dependencies: [
                .product(
                    name: "Capacitor",
                    package: "capacitor-swift-pm"
                ),
            ],
            path: "Sources/CHTTPPlugin"
        ),
        .target(
            name: "HTTPPlugin",
            dependencies:
            [
                .product(
                    name: "Capacitor",
                    package: "capacitor-swift-pm"
                ),
                .product(
                    name: "Cordova",
                    package: "capacitor-swift-pm"
                ),
                "CHTTPPlugin",
            ],
            path: "Sources/HTTPPlugin"
        ),
    ]
)
