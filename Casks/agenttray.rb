cask "agenttray" do
  version "0.5.0"
  sha256 "f92b10975dc4d0fead950e281228505b851604ebc99a1219d4a8518c50534162"

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
