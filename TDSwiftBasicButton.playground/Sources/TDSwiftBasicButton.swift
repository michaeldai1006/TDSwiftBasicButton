  import Foundation
  import UIKit
  
  public enum TDSwiftBasicButtonState {
      case enabled
      case disabled
  }
  
  public class TDSwiftBasicButton: UIButton {
    // Default btn appearance
    // Color
    public var themeColor = UIColor(red:0.31, green:0.32, blue:0.63, alpha:1.0) { didSet { setupAppearance() } }
    public var labelColor = UIColor.white { didSet { setupAppearance() } }
    public var labelHighlightColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2) { didSet { setupAppearance() } }
    
    // Font
    public var labelFont = UIFont.systemFont(ofSize: 17.0, weight: .semibold) { didSet { setupAppearance() } }
    
    // State
    public var disabledAlpha: CGFloat = 0.5 { didSet { setupAppearance() } }
    
    // Corner radius
    public var cornerRadius: CGFloat = 6.0 { didSet { setupAppearance() } }
    
    // Shadow
    public var castShadow = true { didSet { setupAppearance() } }
    public var shadowColor = UIColor.black.cgColor { didSet { setupAppearance() } }
    public var shadowOffset = CGSize(width: 0.0, height: 2.0) { didSet { setupAppearance() } }
    public var shadowOpacity: Float = 0.5 { didSet { setupAppearance() } }
    public var shadowRadius: CGFloat = 2.0 { didSet { setupAppearance() } }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupAppearance()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAppearance()
    }
    
    private func setupAppearance() {
        // Background and label color
        self.backgroundColor = themeColor
        self.setTitleColor(labelColor, for: .normal)
        self.setTitleColor(labelHighlightColor, for: .highlighted)
        
        // Label font
        self.titleLabel?.font = labelFont
        
        // Corner redius
        self.layer.cornerRadius = 6.0
        
        // Shadow
        if castShadow {
            self.layer.shadowColor = shadowColor
            self.layer.shadowOffset = shadowOffset
            self.layer.shadowOpacity = shadowOpacity
            self.layer.shadowRadius = shadowRadius
            self.layer.masksToBounds = false
            self.clipsToBounds = false
        }
    }
    
    // Enable, disable btn
    public func changeButtonState(to state: TDSwiftBasicButtonState) {
        switch state {
        case .enabled:
            self.isEnabled = true
            self.alpha = 1.0
        case .disabled:
            self.isEnabled = false
            self.alpha = disabledAlpha
        }
    }
  }
