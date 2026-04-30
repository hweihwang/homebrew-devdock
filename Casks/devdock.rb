cask "devdock" do
  version "0.2.1"
  sha256 "a681209a910192fcbce7503a87f078fab8ecf42baa4bf8791636050aad2e5b4b"

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
