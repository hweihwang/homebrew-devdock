cask "devdock" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm: "5e8a74354321688eb17d7a5069a004aa0c656f1d6625e195c8fd76bcaa7059d4", intel: "bca2ea64bee12d5775a0b8fd65453ba647a200ac2173b2978ca8bb0e6252689a"

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
