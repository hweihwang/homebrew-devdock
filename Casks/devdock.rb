cask "devdock" do
  version "0.2.0"
  sha256 "e3035c85e25e16d0bb3ed547381b5a61c8af46b19210937833ffb0389474ac73"

  url "https://github.com/hweihwang/devdock-releases/releases/download/v#{version}/stable-macos-arm64-DevDock.dmg",
      verified: "github.com/hweihwang/devdock-releases/"
  name "DevDock"
  desc "Local dev control plane for multi-repo development, powered by Bun, Electrobun, Turbo, and SQLite."
  homepage "https://github.com/hweihwang/devdock-releases"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "DevDock.app"

  uninstall quit: "com.hweihwang.devdock"

  zap trash: [
    "~/Library/Application Support/DevDock",
    "~/Library/Caches/com.hweihwang.devdock",
    "~/Library/Preferences/com.hweihwang.devdock.plist",
    "~/Library/Saved Application State/com.hweihwang.devdock.savedState",
    "~/.devdock",
  ]
end
