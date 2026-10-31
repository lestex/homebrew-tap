cask "agenttray" do
  version "0.4.0"
  sha256 "89484ba879c8952cc7b509679ca2e3c1b83795dee99e4b02a5c04a17376928ed"

  url "https://github.com/lestex/agenttray/releases/download/v#{version}/AgentTray-v#{version}.dmg"
  name "AgentTray"
  desc "Agent usage limits in the menu bar"
  homepage "https://github.com/lestex/agenttray"

  depends_on macos: :sonoma

  app "AgentTray.app"

  zap trash: [
    "~/Library/Caches/com.lestex.agenttray",
    "~/Library/Preferences/com.lestex.agenttray.plist",
  ]
end
