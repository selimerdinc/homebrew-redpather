  version "1.3.2"
  sha256 "a1c829a52d10b840ac325db3f431e91236dc99866e9276bc5b575d4b4dd3ea22"

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
