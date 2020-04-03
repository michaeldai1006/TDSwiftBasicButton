  import Foundation
  import UIKit
  
  public enum TDSwiftBasicButtonState {
      case enabled
      case disabled
  }
  
  public class TDSwiftBasicButton: UIButton {
    // Default btn appearance
    // Color
    public var themeColor = TDSwiftBasicButtonStyleSheet.color.themeColor { didSet { setupAppearance() } }
    public var labelColor = TDSwiftBasicButtonStyleSheet.color.labelColor { didSet { setupAppearance() } }
    public var labelHighlightColor = TDSwiftBasicButtonStyleSheet.color.labelHighlightColor { didSet { setupAppearance() } }
    
    // Font
    public var labelFont = TDSwiftBasicButtonStyleSheet.font.labelFont { didSet { setupAppearance() } }
    
    // State
    public var disabledAlpha = TDSwiftBasicButtonStyleSheet.state.disabledAlpha { didSet { setupAppearance() } }
    
    // Corner radius
    public var cornerRadius = TDSwiftBasicButtonStyleSheet.cornerRadius.cornerRadius { didSet { setupAppearance() } }
    
    // Shadow
    public var castShadow = TDSwiftBasicButtonStyleSheet.shadow.castShadow { didSet { setupAppearance() } }
    public var shadowColor = TDSwiftBasicButtonStyleSheet.shadow.shadowColor { didSet { setupAppearance() } }
    public var shadowOffset = TDSwiftBasicButtonStyleSheet.shadow.shadowOffset { didSet { setupAppearance() } }
    public var shadowOpacity = TDSwiftBasicButtonStyleSheet.shadow.shadowOpacity { didSet { setupAppearance() } }
    public var shadowRadius = TDSwiftBasicButtonStyleSheet.shadow.shadowRadius { didSet { setupAppearance() } }
    
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
