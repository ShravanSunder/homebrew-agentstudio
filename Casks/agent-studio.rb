cask "agent-studio" do
  version "0.0.66"
  sha256 "6c902be67546cec13b646cf8f452bd9ab4c69d9ff9ff516a345e301b19916f5e"

  url "https://github.com/ShravanSunder/agentstudio/releases/download/v#{version}/AgentStudio-v#{version}-macos.zip"
  name "Agent Studio"
  desc "Terminal application with Ghostty terminal emulator and project management"
  homepage "https://github.com/ShravanSunder/agentstudio"

  depends_on macos: :tahoe

  app "AgentStudio.app"

  zap trash: [
    "~/.agentstudio",
    "~/Library/Caches/com.agentstudio.app",
    "~/Library/Preferences/com.agentstudio.app.plist",
    "~/Library/Saved Application State/com.agentstudio.app.savedState",
  ]
end
