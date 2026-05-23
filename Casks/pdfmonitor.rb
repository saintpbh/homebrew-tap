cask "pdfmonitor" do
  version "0.1.0"
  sha256 "2a85e472c22051abfadeafb1262e04f3a1f9816ca46c9253ce85801b8e2195a3"

  url "https://github.com/saintpbh/PDFMonitor/releases/download/v#{version}/PDFMonitor-macOS.zip"
  name "PDFMonitor"
  desc "High-performance presentation prompter and dual-screen PDF overlay presenter"
  homepage "https://github.com/saintpbh/PDFMonitor"

  app "PDFMonitor.app"

  zap trash: [
    "~/Library/Application Support/PDFMonitor",
    "~/Library/Preferences/com.antigravity.pdf.studio.plist",
  ]
end
