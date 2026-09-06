cask "agenttray" do
  version "0.3.0"
  sha256 "a67a514d7b742f3e1ac95eb84a1c9a23cbce9a20da2b20582e47f65f07d82be9"

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
