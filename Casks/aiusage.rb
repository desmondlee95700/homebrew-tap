cask "aiusage" do
  version "2.6.6"
  sha256 "fbcf64d8c3aac16afad34ebb60e77458a3e3f8a9c1661c42677f422bb7771754"

  url "https://github.com/desmondlee95700/AIUsage/releases/download/v#{version}/AIUsage-v#{version}.dmg"
  name "AIUsage"
  desc "Menu bar tracker for AI model quotas and credits"
  homepage "https://github.com/desmondlee95700/AIUsage"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "AIUsage.app"

  uninstall quit: "io.github.desmondlee95700.aiusage"

  zap trash: [
    "~/Library/Preferences/com.antigravity.aiusage.plist",
    "~/Library/Preferences/io.github.desmondlee95700.aiusage.plist",
  ]
end
