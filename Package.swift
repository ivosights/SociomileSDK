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
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/App.xcframework.zip",
          checksum: "786c03b25195ab44823691822a84218a517e5afe32251353d70da1975733a9e3"
        ),
        .binaryTarget(
          name: "Flutter",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/Flutter.xcframework.zip",
          checksum: "2533eb6f14c3f979d45ece6c356e06c91d771a804b0039083caebd2e8691a563"
        ),
        .binaryTarget(
          name: "FlutterPluginRegistrant",
          url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/FlutterPluginRegistrant.xcframework.zip",
          checksum: "0688f45240b2034e137464e39a70e38de58d5fe759cb85c1ad4a4949f0e8d489"
        ),
//        .target(
//            name: "SociomileSDK",
//            dependencies: []),
        .testTarget(
            name: "SociomileSDKTests",
            dependencies: ["SociomileSDK"]),
    ]
)
