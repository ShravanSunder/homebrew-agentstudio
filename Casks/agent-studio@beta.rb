cask "agent-studio@beta" do
  version "0.0.99-beta.51"
  sha256 "44ee47f00bfed5f051d3f75668f06a68cb79f44bca9172b134c4047797e5d434"

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
