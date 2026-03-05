cask "devdock" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm: "94fdc6824bc687ecf2cc1a0149340e7dec3114adf03fa1036f62ab3e14ddabb7", intel: "d46863dce1d084931febadbe914e8ef94c79bd6ee213a471fa953b1fd3655c84"

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
