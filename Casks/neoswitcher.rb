cask "neoswitcher" do
  version "0.1.0"
  sha256 "d19b22456248dd4c336aa409742f2fff2ce79d9640aaa48ecf724364d991715c"

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
