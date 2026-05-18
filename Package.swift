// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "TriplePixelSDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "TriplePixelSDK",
            targets: ["TriplePixelSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "TriplePixelSDK",
            url: "https://github.com/Triple-Whale/triple-pixel-sdk-spm/releases/download/0.1.0/TriplePixelSDK.xcframework.zip",
            checksum: "bd589031514e3eee0de651e72d83852cdfe8043861d42717b50012fcb516dc04"
        )
    ]
)
