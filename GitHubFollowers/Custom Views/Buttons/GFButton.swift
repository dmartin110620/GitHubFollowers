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
//        configure(title: "", color: .systemBlue, systemImageName: "")
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(backgroundColor: UIColor, title: String, systemImageName: String?) {
        super.init(frame: .zero)
        configure(title: title, color: backgroundColor, systemImageName: systemImageName)
    }
    
    
    func set(backgroundColor: UIColor, title: String, systemImageName: String?) {
        configure(title: title, color: backgroundColor, systemImageName: systemImageName)
    }
    
    
    private func configure(title: String, color: UIColor, systemImageName: String?) {
        configuration                       = .prominentClearGlass()
        configuration?.baseBackgroundColor  = color.withAlphaComponent(0.5)
        configuration?.baseForegroundColor  = color
        configuration?.title                = title
        configuration?.cornerStyle          = .medium
        titleLabel?.font                    = UIFont.preferredFont(forTextStyle: .headline)
        
        configuration?.image                = UIImage(systemName: systemImageName ?? "")
        configuration?.imagePadding         = 10
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
