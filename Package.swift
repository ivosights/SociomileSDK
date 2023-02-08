// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SociomileSDK",
    platforms: [
      .macOS(.v10_15), .iOS(.v14), .tvOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SociomileSDK",
            targets: ["SociomileSDK", "App", "Flutter", "FlutterPluginRegistrant"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
          name: "SociomileSDK",
          path: "./Sources/SociomileSDK.xcframework"
        ),
        .binaryTarget(
          name: "App",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/0.0.1/App.xcframework.zip",
          checksum: "093bd6d03d078246bebc4edf63c03e43fd6d85f55a2e89a7bf3424a7ee0ae92e"
        ),
        .binaryTarget(
          name: "Flutter",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/0.0.1/Flutter.xcframework.zip",
          checksum: "305ab8f004f8891222524961fd2ae5b970890f5d8d60b598b480075cd00f8170"
        ),
        .binaryTarget(
          name: "FlutterPluginRegistrant",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/0.0.1/FlutterPluginRegistrant.xcframework.zip",
          checksum: "07d1ae014fb48eeed9d99fa4a940826598a8be8741cf11717795e0a80faa11bf"
        ),
//        .target(
//            name: "SociomileSDK",
//            dependencies: []),
        .testTarget(
            name: "SociomileSDKTests",
            dependencies: ["SociomileSDK"]),
    ]
)
