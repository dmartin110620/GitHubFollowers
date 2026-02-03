//
//  GFEmptyStateView.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/13/26.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageview = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    
    private func configure() {
        addSubview(messageLabel)
        addSubview(logoImageview)
        
        messageLabel.numberOfLines  = 3
        messageLabel.textColor      = .secondaryLabel
        
        logoImageview.image         = UIImage(named: "empty-state-logo")
        logoImageview.translatesAutoresizingMaskIntoConstraints = false
        
        let centerYAnchorConstant: CGFloat = DeviceType.isiPhoneSE2 ? -80 : -120
        let bottomAncchorConstant: CGFloat = DeviceType.isiPhoneSE2 ? 100 : 40
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: centerYAnchorConstant),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            logoImageview.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageview.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageview.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            logoImageview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: bottomAncchorConstant)
        ])
    }
}
