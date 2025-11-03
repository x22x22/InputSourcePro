import Foundation

/// Represents the language type of an input source
enum InputMode: Equatable {
    case cjk(String)  // CJK language (stores language code: zh, ja, ko, vi)
    case latin        // Latin/English keyboard
    case other        // Other keyboards
    
    /// Localized display badge for the language type
    var displayBadge: String {
        switch self {
        case .cjk(let lang):
            // Return language-specific indicators
            if lang.hasPrefix("zh") {
                return "中"
            } else if lang == "ja" {
                return "あ"
            } else if lang == "ko" {
                return "한"
            } else if lang == "vi" {
                return "Vi"
            } else {
                return "中"  // Default for unknown CJK
            }
        case .latin:
            return "EN"
        case .other:
            return ""
        }
    }
}
