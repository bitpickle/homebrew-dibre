cask "dibre" do
  version "1.0.2"

  sha256 "d85fb70ebd38e5596d93e644f94cd1e21c4d21c4b9dcebb0828d718355e64530"

  url "https://github.com/bitpickle/homebrew-dibre/releases/download/v#{version}/Dibre_#{version}_aarch64.dmg"

  name "Dibre"
  desc "Modern and dynamic database client"
  homepage "https://github.com/bitpickle/dibre"

  app "Dibre.app"

  zap trash: [
    "~/Library/Application Support/dev.bitpickle.dibre",
    "~/Library/Preferences/dev.bitpickle.dibre.plist",
    "~/Library/Saved Application State/dev.bitpickle.dibre.savedState",
    "~/Library/Caches/dev.bitpickle.dibre"
  ]
end
