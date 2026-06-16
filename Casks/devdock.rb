cask "devdock" do
  version "0.3.0"
  sha256 "e1ac9567c8f420a7f743250df96a9a5696c9d9d9ddfafa3ae23d2f3a7d98eef6"

  url "https://github.com/hweihwang/devdock-releases/releases/download/v#{version}/stable-macos-arm64-DevDock.dmg",
      verified: "github.com/hweihwang/devdock-releases/"
  name "DevDock"
  desc "Local dev control plane for multi-repo development, powered by Bun, Electrobun, Turbo, and SQLite."
  homepage "https://github.com/hweihwang/devdock-releases"

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
