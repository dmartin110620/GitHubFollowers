//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/6/26.
//

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, title: String) {
        super.init(frame: .zero)
        
        configuration                       = .prominentClearGlass()
        configuration?.baseBackgroundColor  = color.withAlphaComponent(1)
        configuration?.title                = title
        
        configure()
    }
    
    private func configure() {
        configuration?.cornerStyle          = .medium
        configuration?.baseForegroundColor  = .white
        titleLabel?.font                    = UIFont.preferredFont(forTextStyle: .headline)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
}
