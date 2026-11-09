cask "agenttray" do
  version "0.6.1"
  sha256 "1631969f44d4090fa7ec0fd2091e3459940f192acbdcf7f989c2c968040ffd55"

  url "https://github.com/lestex/agenttray/releases/download/v#{version}/AgentTray-v#{version}.dmg"
  name "AgentTray"
  desc "Agent usage limits in the menu bar"
  homepage "https://github.com/lestex/agenttray"

  depends_on formula: "python@3.13"
  depends_on macos: :sonoma

  app "AgentTray.app"
  binary "#{appdir}/AgentTray.app/Contents/Resources/atcli"

  zap trash: [
    "~/Library/Caches/com.lestex.agenttray",
    "~/Library/Preferences/com.lestex.agenttray.plist",
  ]
end
