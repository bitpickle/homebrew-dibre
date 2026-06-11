cask "dibre" do
  version "1.0.0"

  # Este é o hash de integridade do arquivo.
  # Quando a pipeline rodar e o .dmg for gerado na sua release, você deve calcular o hash dele.
  # Exemplo no terminal: shasum -a 256 caminho/para/Dibre_1.0.0_aarch64.dmg
  sha256 "COLOQUE_O_HASH_AQUI_OU_USE_NO_CHECK"

  # A URL de onde o brew vai baixar o instalador
  # Como a Action que criamos roda no macos-latest (que hoje em dia é Apple Silicon), o Tauri gera o arquivo com o sufixo _aarch64.dmg
  url "https://github.com/bitpickle/dibre/releases/download/v#{version}/Dibre_#{version}_aarch64.dmg"

  name "Dibre"
  desc "Modern and dynamic database client"
  homepage "https://github.com/bitpickle/dibre"

  app "Dibre.app"

  # Opcional, mas muito bom ter:
  # Limpa o "lixo" quando alguém rodar 'brew uninstall --zap dibre'
  zap trash: [
    "~/Library/Application Support/dev.bitpickle.dibre",
    "~/Library/Preferences/dev.bitpickle.dibre.plist",
    "~/Library/Saved Application State/dev.bitpickle.dibre.savedState",
    "~/Library/Caches/dev.bitpickle.dibre"
  ]
end
