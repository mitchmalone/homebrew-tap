cask "launcharr" do
  version "0.4.0"
  sha256 "73f3102c9700b5973c22ce7b6ccf9a592e8171b47146032162c83190112e359b"

  url "https://github.com/mitchmalone/launcharr/releases/download/v#{version}/launcharr-#{version}.zip"
  name "launcharr"
  desc "App launcher that dresses up as a shell prompt"
  homepage "https://launcharr.com/"

  depends_on arch: :arm64
  depends_on macos: :sonoma
  # v0.4 desktop layer: tiling comes with launcharr; the app renders AeroSpace's config.
  # JankyBorders is deliberately NOT a dependency (GPL-3, opt-in from Settings → Desktop).
  depends_on cask: "nikitabobko/tap/aerospace"

  app "launcharr.app"

  zap trash: [
    "~/.config/launcharr",
    "~/Library/Application Support/com.mitchmalone.launcharr",
  ]
end
