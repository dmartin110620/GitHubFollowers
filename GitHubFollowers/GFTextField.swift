//
//  GFTextField.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/6/26.
//

import UIKit

class GFTextField: UITextField {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius          = 10
        layer.borderWidth           = 2
        layer.borderColor           = UIColor.systemGray4.cgColor
        
        tintColor                   = .label
        textColor                   = .label
        font                        = UIFont.preferredFont(forTextStyle: .title3)
        adjustsFontSizeToFitWidth   = true
        minimumFontSize             = 12
        
        placeholder                 = "Enter a username"
        textAlignment               = .center
        
        backgroundColor             = .tertiarySystemBackground
        autocorrectionType          = .no
        keyboardType                = .default
        returnKeyType               = .go
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
