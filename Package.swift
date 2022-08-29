// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QuadMathTester",
    
    products: [
        .executable(name: "QuadMathTester", targets: ["QuadMathTester"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/jolonf/QuadMath.git", from: "1.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "QuadMathTester",
            dependencies: ["QuadMath"],
            linkerSettings: [.unsafeFlags(["Lib/libqfloat_bridge.a"])]),
    ]
)
