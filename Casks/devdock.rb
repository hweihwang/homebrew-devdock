cask "devdock" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm: "4a022d532d292c80957098e0c356894cccd8932a850ed1cc714c52d7cbecf0c9", intel: "c5ca27c456b3440b765c1446dca9f3bb2e9090f4f1960874ee7caeb7c734e7cb"

  url "https://github.com/hweihwang/devdock-releases/releases/download/v#{version}/DevDock-mac-#{arch}.dmg",
      verified: "github.com/hweihwang/devdock-releases/"
  name "DevDock"
  desc "Local dev control plane for macOS — start/stop services, detect orphan processes, resolve port conflicts, stream logs."
  homepage "https://github.com/hweihwang/devdock-releases"

  auto_updates true
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
