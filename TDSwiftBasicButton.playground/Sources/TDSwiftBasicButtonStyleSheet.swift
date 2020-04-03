  import Foundation
  import UIKit
  
  // Describes the default appearance of TDSwiftBasicButton
  struct TDSwiftBasicButtonStyleSheet {
    struct color {
        static let themeColor = UIColor(red:0.31, green:0.32, blue:0.63, alpha:1.0)
        static let labelColor = UIColor.white
        static let labelHighlightColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
    }
    
    struct font {
        static let labelFont = UIFont.systemFont(ofSize: 17.0, weight: .semibold)
    }
    
    struct state {
        static let disabledAlpha: CGFloat = 0.5
    }
    
    struct cornerRadius {
        static let cornerRadius: CGFloat = 6.0
    }
    
    struct shadow {
        static let castShadow = true
        static let shadowColor = UIColor.black.cgColor
        static let shadowOffset = CGSize(width: 0.0, height: 2.0)
        static let shadowOpacity: Float = 0.5
        static let shadowRadius: CGFloat = 2.0
    }
  }
