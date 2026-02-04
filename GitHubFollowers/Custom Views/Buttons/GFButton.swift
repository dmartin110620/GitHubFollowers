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
    
    
    convenience init(color: UIColor, title: String, systemImageName: String) {
        self.init(frame: .zero)
        set(color: color, title: title, systemImageName: systemImageName)
    }
    
    
    func set(color: UIColor, title: String, systemImageName: String) {
        configure()
        configuration?.baseBackgroundColor  = color.withAlphaComponent(0.5)
        configuration?.baseForegroundColor  = color
        configuration?.title                = title
        configuration?.image                = UIImage(systemName: systemImageName)
    }
    
    
    private func configure() {
        configuration                       = .prominentClearGlass()
        configuration?.cornerStyle          = .medium
        configuration?.imagePadding         = 6
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
