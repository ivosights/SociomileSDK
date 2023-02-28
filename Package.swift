// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SociomileSDK",
    platforms: [
      .iOS(.v14), .tvOS(.v14)
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
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.1/SociomileSDK.xcframework.zip",
          checksum: "77815835832a67c7340c976f75d720207cba2243df97bbb88e8de265f406e046"
//          path: "./Sources/SociomileSDK.xcframework"
        ),
        .binaryTarget(
          name: "App",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.1/App.xcframework.zip",
          checksum: "a5c41d1945a07996fbd1a6bb2e42dcfd35f074ce722eabe2d4ec1f3a7c7213db"
        ),
        .binaryTarget(
          name: "Flutter",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.1/Flutter.xcframework.zip",
          checksum: "2adae1a09b8fb3c6acd437a7d0d73889f7d21a7fdaf6e6f937564c39d1700ba8"
        ),
        .binaryTarget(
          name: "FlutterPluginRegistrant",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.1/FlutterPluginRegistrant.xcframework.zip",
          checksum: "eafbb6c6f4080ec8225d4386e3efafeb796c361a1a76eaa10f472ea13c067a34"
        ),
//        .target(
//            name: "SociomileSDK",
//            dependencies: []),
//        .testTarget(
//            name: "SociomileSDKTests",
//            dependencies: ["SociomileSDK"]),
    ]
)
