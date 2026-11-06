cask "neoswitcher" do
  version "0.1.3"
  sha256 "e630996b98a338bb93d54abe35e2605449fc30c70c9d777b1e10f863a38b654b"

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
