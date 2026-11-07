cask "agenttray" do
  version "0.5.1"
  sha256 "aa8febe77da3123e4a4592aebb3d79d37af37e41306aa549445ea75a0f2ef21c"

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
