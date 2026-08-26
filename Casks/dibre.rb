cask "dibre" do
  version "1.0.8"

  sha256 "27824c87858f75b374a688eaed9d95b940bf9894f0274b9c743f133e3f0387d7"

  url "https://github.com/bitpickle/homebrew-dibre/releases/download/v#{version}/Dibre_#{version}_aarch64.dmg"

  name "Dibre"
  desc "Modern and dynamic database client"
  homepage "https://github.com/bitpickle/dibre"

  app "Dibre.app"

  postflight do
    app_path = appdir/"Dibre.app"
    next unless app_path.exist?

    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", app_path]
  end

  zap trash: [
    "~/Library/Application Support/dev.bitpickle.dibre",
    "~/Library/Preferences/dev.bitpickle.dibre.plist",
    "~/Library/Saved Application State/dev.bitpickle.dibre.savedState",
    "~/Library/Caches/dev.bitpickle.dibre"
  ]
end
