cask "go-vendor" do
  arch arm: "arm64", intel: "amd64"

  version "1.19"
  sha256 arm:   "859e0a54b7fcea89d9dd1ec52aab415ac8f169999e5fdfb0f0c15b577c4ead5e",
         intel: "df6509885f65f0d7a4eaf3dfbe7dda327569787e8a0a31cbf99ae3a6e23e9ea8"

  name "Go"
  url "https://go.dev/dl/go#{version}.darwin-#{arch}.tar.gz"
  desc "Open source programming language to build simple/reliable/efficient software"
  homepage "https://go.dev/"

  livecheck do
    url "https://go.dev/dl/"
    regex(/go(\d+(?:\.\d+)+)\.src\.tar\.gz/i)
  end

  binary "go/bin/go"
  binary "go/bin/gofmt"
end
