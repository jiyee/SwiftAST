// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "SwiftAST",
    products: [
        .library(
            name: "SwiftAST",
            targets: ["SwiftAST"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/LuizZak/MiniLexer.git", exact: "0.10.0"),
    ],
    targets: [
        .target(
            name: "SwiftAST",
            dependencies: [
                .product(name: "MiniLexer", package: "MiniLexer"),
            ]
        ),
        .testTarget(
            name: "SwiftASTTests",
            dependencies: ["SwiftAST"]
        ),
    ]
)
