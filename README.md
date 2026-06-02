# TriplePixel SDK — Swift Package Manager distribution

Swift Package mirror for the [Triple Whale](https://www.triplewhale.com) mobile tracking SDK on iOS.

This repository exists only to distribute the SDK to Swift Package Manager consumers. Each tagged release publishes a `TriplePixelSDK.xcframework.zip` as a release asset and pins it from `Package.swift` as a `.binaryTarget`.

## Installation

In Xcode:

1. **File → Add Package Dependencies…**
2. URL: `https://github.com/Triple-Whale/triple-pixel-sdk-spm`
3. Dependency rule: **Up to next major** — `0.1.0`
4. Add `TriplePixelSDK` to your target.

Or in your `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/Triple-Whale/triple-pixel-sdk-spm",
        from: "0.1.0"
    )
]
```

## Requirements

- iOS 14.0+
- Xcode 14+

## Usage

```swift
import TriplePixelSDK

// First arg = your Triple Whale shop ID (the identifier registered for your
// store in Triple Whale, e.g. `myshop.myshopify.com`). Do not pass your
// storefront domain or shop name.
TriplePixel.Companion.shared.doInit(
    shopName: "your-tw-shop-id",
    msCountry: "US",
    curr: "USD"
)

TriplePixel.Companion.shared.pageLoad(
    e: PageLoadEvent(
        url: "/home",
        productId: nil, productName: nil, productPrice: nil,
        productVariant: nil, searchTerm: nil, collection: nil
    )
)
```

Full API reference and consent / privacy documentation: [https://kb.triplewhale.com/](https://kb.triplewhale.com/).

## Reporting security issues

If you believe you have found a security vulnerability in this SDK, please report it privately — do **not** open a public issue or post it in any public forum.

Email **tw-privacy@triplewhale.com** with a description of the vulnerability, steps to reproduce, and the SDK version. We aim to acknowledge reports within two business days and to share a remediation plan within seven.

## License

MIT.
