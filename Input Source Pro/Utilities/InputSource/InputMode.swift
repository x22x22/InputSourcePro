import Foundation

/// Represents the current input mode state of an input source
enum InputMode: Equatable {
    case ascii  // English/ASCII mode
    case native // Native language mode (Chinese, Japanese, Korean, etc.)
    case unknown // Cannot determine mode or not applicable
    
    /// Localized display name for the mode
    var displayName: String {
        switch self {
        case .ascii:
            return "EN"
        case .native:
            return "中"  // Default to Chinese, can be customized per language
        case .unknown:
            return ""
        }
    }
    
    /// Returns a localized display name based on the input source language
    func displayName(for language: String) -> String {
        switch self {
        case .ascii:
            return "EN"
        case .native:
            // Return language-specific indicators
            if language.hasPrefix("zh") {
                return "中"
            } else if language == "ja" {
                return "あ"
            } else if language == "ko" {
                return "한"
            } else if language == "vi" {
                return "Vi"
            } else {
                return "A"
            }
        case .unknown:
            return ""
        }
    }
}
