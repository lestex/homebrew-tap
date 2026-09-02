cask "agenttray" do
  version "0.2.0"
  sha256 "9049ce1d02365d5e206b2502698d32a5fd2e1d51fe64b667ceaa16a73d24e38a"

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
