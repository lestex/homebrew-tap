cask "neoswitcher" do
  version "0.1.1"
  sha256 "72a41aa77e3fd49be7d025f9704b6ea0632c9406fe74f7837410bef1f72cbe65"

  url "https://github.com/lestex/neoswitcher/releases/download/v#{version}/NeoSwitcher-v#{version}.dmg"
  name "NeoSwitcher"
  desc "Fixes words typed in the wrong keyboard layout"
  homepage "https://github.com/lestex/neoswitcher"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "NeoSwitcher.app"

  zap trash: [
    "~/.config/neoswitcher",
    "~/Library/Preferences/com.lestex.neoswitcher.plist",
  ]
end
