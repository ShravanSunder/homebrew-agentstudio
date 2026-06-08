cask "agent-studio@beta" do
  version "0.0.54-beta.7"
  sha256 "ea5d382ba2d0bd6e683d6422dde7c492b9b992f2e5dcc1c3965d0189cd451876"

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
