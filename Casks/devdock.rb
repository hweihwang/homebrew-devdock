cask "devdock" do
  version "0.3.0"
  sha256 "d48a1f29351e58229bdec67a6332886c317d554f794f47d27d7b1fa3401e69e2"

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
