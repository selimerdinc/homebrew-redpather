cask "redpather" do
  version "1.3.3"
  sha256 "6fae25d0c6dbbeac9a2e3d6dbfceb0c43adbfebb1aec9abbcd03dae9158fffd6"

  url "https://github.com/selimerdinc/redPather/releases/download/v#{version}/RedPather-v#{version}-macOS.zip"
  name "Red Pather"
  desc "Ultimate Mobile Automation Tool with AI support"
  homepage "https://github.com/selimerdinc/redPather"

  app "RedPather.app"

  binary "#{appdir}/RedPather.app/Contents/MacOS/RedPather", target: "redpather"

  zap trash: [
    "~/Library/Application Support/RedPather",
    "~/Library/Preferences/com.selimerdinc.redpather.plist",
  ]
end
