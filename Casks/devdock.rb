cask "devdock" do
  arch arm: "arm64", intel: "x64"

  version "0.1.5"
  sha256 arm: "f16438a2a50cabbcb658b61c311e19c8964fe0daf4cff14531047535b4098a58", intel: "8dc3bf7752f2f2304ff275da29cbba66229b577570bbd136f5f3caa7a74f2e4a"

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
