cask "agent-studio@beta" do
  version "0.0.54-beta.3"
  sha256 "a14bf8609dcf9b24fc1c4f8bb93c059c29bb03ef1b8a28d8ee383b36c3183996"

  url "https://github.com/ShravanSunder/agentstudio/releases/download/v#{version}/AgentStudio-v#{version}-macos.zip"
  name "Agent Studio"
  desc "Terminal application with Ghostty terminal emulator and project management"
  homepage "https://github.com/ShravanSunder/agentstudio"

  conflicts_with cask: "agent-studio"
  depends_on macos: :tahoe

  app "AgentStudio.app"

  zap trash: [
    "~/.agent-studio-b",
    "~/Library/Caches/com.agentstudio.app",
    "~/Library/Preferences/com.agentstudio.app.plist",
  ]
end
