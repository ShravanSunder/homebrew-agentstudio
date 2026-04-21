cask "agent-studio" do
  version "0.0.36"
  sha256 "f732ac07a489ede84a92382d0af2f574cd09f05429ba4590ddbc368655d0ffb7"

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
