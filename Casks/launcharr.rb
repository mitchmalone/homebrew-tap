cask "launcharr" do
  version "0.3.1"
  sha256 "0f7c416a1dd5a1d7486c1597dddac21da00c0d154bb9157c71101ef5a771eccc"

  url "https://github.com/mitchmalone/launcharr/releases/download/v#{version}/launcharr-#{version}.zip"
  name "launcharr"
  desc "App launcher that dresses up as a shell prompt"
  homepage "https://launcharr.com"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "launcharr.app"

  zap trash: [
    "~/.config/launcharr",
    "~/Library/Application Support/com.mitchmalone.launcharr",
  ]
end
