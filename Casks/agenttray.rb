cask "agenttray" do
  version "0.1.1"
  sha256 "7ffb933bd76611e85acb184f3bc1f4af19ebd91528dd1e56955cdb7d1ef427dd"

  url "https://github.com/lestex/agenttray/releases/download/v#{version}/AgentTray-v#{version}.dmg",
      verified: "github.com/lestex/agenttray/"
  name "AgentTray"
  desc "Agent usage limits in the menu bar"
  homepage "https://github.com/lestex/agenttray"

  depends_on macos: ">= :sonoma"

  app "AgentTray.app"

  zap trash: [
    "~/Library/Caches/com.lestex.agenttray",
    "~/Library/Preferences/com.lestex.agenttray.plist",
  ]
end
