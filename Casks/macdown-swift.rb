cask "macdown-swift" do
  version "1.2"
  sha256 "47379bc3fd752295300f561ee6c8e1b0f0c4bc5f4d4bb70aaa8fbeee57758320"

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
