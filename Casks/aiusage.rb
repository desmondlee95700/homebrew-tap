cask "aiusage" do
  version "2.6.7"
  sha256 "6d4a9c88ce5050cde87a747408a138990d218c9053e0478edd03a12c00f2792e"

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
