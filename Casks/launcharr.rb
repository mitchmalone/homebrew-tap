cask "launcharr" do
  version "0.3.1"
  sha256 "0f7c416a1dd5a1d7486c1597dddac21da00c0d154bb9157c71101ef5a771eccc"

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
