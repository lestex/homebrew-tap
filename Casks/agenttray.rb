cask "agenttray" do
  version "0.6.0"
  sha256 "13d0b83e8e42abf13be064ce8ca0ea64d8b7c8b2e8997d8f64d2f8c6226eb1ec"

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
