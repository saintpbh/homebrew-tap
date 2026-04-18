cask "sermonnote" do
  version "0.2.0"
  sha256 "10d27b06308ec8d5c9d1977fc5d966ebb9fbd28889dfbaeb0db0586a4c26046f"

  url "https://github.com/saintpbh/freehwp/releases/download/v0.2.0/sermonnote.dmg"
  name "맘편한설교노트"
  desc "에어갭 환경과 오프라인을 위한 HWP/HWPX 호환 성경 타이핑 에디터"
  homepage "https://github.com/saintpbh/freehwp"

  app "맘편한설교노트.app", target: "맘편한설교노트.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/맘편한설교노트.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.tauri.sermonnote",
    "~/Library/Caches/com.tauri.sermonnote",
    "~/Library/Preferences/com.tauri.sermonnote.plist",
    "~/Library/WebKit/com.tauri.sermonnote",
  ]
end
