cask "agent-studio" do
  version "0.0.40"
  sha256 "c00da6719b37a85a68f4c5b5a0fe3657073fcda78ec83b2d4af71aecf090b2f2"

  url "https://github.com/ShravanSunder/agentstudio/releases/download/v#{version}/AgentStudio-v#{version}-macos.zip"
  name "Agent Studio"
  desc "macOS terminal application with Ghostty terminal emulator and project management"
  homepage "https://github.com/ShravanSunder/agentstudio"

  depends_on macos: ">= :tahoe"

  app "AgentStudio.app"

  zap trash: [
    "~/Library/Preferences/com.agentstudio.app.plist",
    "~/Library/Caches/com.agentstudio.app",
    "~/Library/Application Support/AgentStudio",
  ]
end
