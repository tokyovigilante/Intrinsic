import PackageDescription

let package = Package(
    name: "Intrinsic",
    targets: [
    	Target(name: "Intrinsic")
    ],
    dependencies: [
    	.Package(url: "https://github.com/tokyovigilante/CommonCrypto", majorVersion: 1, minor: 0)
    ]
)
