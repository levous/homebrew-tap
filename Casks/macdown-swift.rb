cask "macdown-swift" do
  version "1.0"
  sha256 "14ac59adc0144f9a71cd3ac354869f368fa59bc2845a93a92b391971aa7130a3"

  url "https://github.com/levous/macdown-swift/releases/download/v#{version}/MacDown-#{version}.zip"
  name "MacDown (Swift)"
  desc "Open source Markdown editor with live preview"
  homepage "https://github.com/levous/macdown-swift"

  # The original MacDown installs an app with the same name.
  conflicts_with cask: "macdown"
  depends_on macos: :sequoia

  app "MacDown.app"
  binary "#{appdir}/MacDown.app/Contents/SharedSupport/bin/macdown"

  # ~/Library/Application Support/MacDown is shared with the original
  # MacDown, so it is left alone.
  zap trash: [
    "~/Library/Caches/io.github.levous.macdown-swift",
    "~/Library/Preferences/io.github.levous.macdown-swift.plist",
    "~/Library/Saved Application State/io.github.levous.macdown-swift.savedState",
    "~/Library/WebKit/io.github.levous.macdown-swift",
  ]
end
