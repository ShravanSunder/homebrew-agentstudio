cask "agent-studio@beta" do
  version "0.0.90-beta.28"
  sha256 "f9de98e9b4f767d6cbbaecaf26f63d1cf5fa79873438d572f2077acce2e86edb"

  url "https://github.com/ShravanSunder/agentstudio/releases/download/v#{version}/AgentStudio-v#{version}-macos.zip"
  name "Agent Studio Beta"
  desc "Terminal application with Ghostty terminal emulator and project management"
  homepage "https://github.com/ShravanSunder/agentstudio"

  depends_on macos: :tahoe

  app "AgentStudio Beta.app"

  zap trash: [
    "~/.agent-studio-b",
    "~/Library/Caches/com.agentstudio.app.beta",
    "~/Library/Preferences/com.agentstudio.app.beta.plist",
    "~/Library/Saved Application State/com.agentstudio.app.beta.savedState",
  ]
end
