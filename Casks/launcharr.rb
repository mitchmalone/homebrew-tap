cask "launcharr" do
  version "0.6.0"
  sha256 "56dfdbd5900810e3040430101fff493f4b65ae81317381e7b5f5a19bd453998d"

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
