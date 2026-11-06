# Template for Casks/scuttler.rb in mitchmalone/homebrew-tap. The release workflow
# fills in the version and zip sha256 and writes the whole file on every v* tag —
# edit here, never in the tap (docs/RELEASING.md).
cask "scuttler" do
  version "0.8.5"
  sha256 "50beae1a4b49ad589813095d7a220ea3f852baa713245f056be84c904666a5e0"

  url "https://github.com/mitchmalone/scuttler/releases/download/v#{version}/scuttler-#{version}.zip"
  name "scuttler"
  desc "Opinionated desktop for developers who live in the terminal"
  homepage "https://www.scuttler.app/"

  # The app updates itself (selfupdate.rs); brew must not fight it.
  auto_updates true
  depends_on arch: :arm64
  # The Desktop rung wraps AeroSpace. JankyBorders is deliberately NOT a dependency
  # (GPL-3, opt-in from Settings -> Desktop).
  # AeroSpace is not a cask dependency: Mitch runs a fork installed from source as
  # aerospace-dev (same app, bundle id and socket). The app detects AeroSpace at runtime.
  depends_on macos: :sonoma

  app "scuttler.app"

  zap trash: [
    "~/.config/scuttler",
    "~/.local/state/scuttler",
    "~/Library/Application Support/com.mitchmalone.scuttlarr",
    "~/Library/LaunchAgents/scuttler.plist",
  ]
end
