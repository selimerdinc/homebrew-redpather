cask "redpather" do
  version "1.3.0"
  sha256 "e8b73719a71ce417a3d054a85a0d93044bad52168497ed2c42ee466d01be1a75"

  url "https://github.com/selimerdinc/redPather/releases/download/v#{version}/RedPather-v#{version}-macOS.zip"
  name "Red Pather"
  desc "Ultimate Mobile Automation Tool with AI support"
  homepage "https://github.com/selimerdinc/redPather"

  app "dist/RedPather.app"

  binary "#{appdir}/RedPather.app/Contents/MacOS/RedPather", target: "redpather"

  zap trash: [
    "~/Library/Application Support/RedPather",
    "~/Library/Preferences/com.selimerdinc.redpather.plist",
  ]
end
