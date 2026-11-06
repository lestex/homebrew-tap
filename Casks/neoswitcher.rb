cask "neoswitcher" do
  version "0.1.2"
  sha256 "0bd0d71042536b9454c0319117c81d11b07814e15ca27fd7fae7b9c95bd7f0ea"

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
