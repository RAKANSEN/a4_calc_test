import PackageDescription

let package = Package(
    name: "calc_test",
    dependencies: [
        .Package(url: "https://github.com/RAKANSEN/a4adv.git", versions: Version(1,0,0)..<Version(2,0,0)),
        .Package(url: "https://github.com/RAKANSEN/a5_mort.git", versions: Version(1,0,0)..<Version(2,0,0))
   ]
)
