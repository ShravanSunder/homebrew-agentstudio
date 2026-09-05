cask "agent-studio" do
  version "0.0.95"
  sha256 "057c0f64ee906962a7eef7e11c96e4b91dc7632018603e303767279479f4add0"

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
