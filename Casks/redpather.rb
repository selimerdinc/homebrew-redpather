cask "redpather" do
  version "1.3.1"
  sha256 "0b6dcb48511b669a12e882e589b9fd8a39c965c605c7c81e14fc25352587781c"

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
