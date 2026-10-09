cask "macdown-swift" do
  version "1.1"
  sha256 "44d0956a75b0f7d77680347f80fb2ff8734aa91a913054a5b5dd98e2f68585ec"

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
