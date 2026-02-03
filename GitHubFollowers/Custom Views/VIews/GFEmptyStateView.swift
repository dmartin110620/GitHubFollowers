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
    
    
    convenience init(message: String) {
        self.init(frame: .zero)
        messageLabel.text = message
    }
    
    
    private func configure() {
        configureMessageLabel()
        configureLogoImageView()
    }
    
    
    private func configureMessageLabel() {
        addSubview(messageLabel)
        messageLabel.numberOfLines  = 3
        messageLabel.textColor      = .secondaryLabel
        
        let centerYAnchorConstant: CGFloat = DeviceType.isiPhoneSE2 ? -90 : -120
        let messageLabelCenterYConstraint = messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: centerYAnchorConstant)
        messageLabelCenterYConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
    private func configureLogoImageView() {
        addSubview(logoImageview)
        
        logoImageview.image = Images.emptyState
        logoImageview.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomAncchorConstant: CGFloat = DeviceType.isiPhoneSE2 ? 100 : 40
        let logoImageViewBottomConstraint = logoImageview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: bottomAncchorConstant)
        logoImageViewBottomConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            logoImageview.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageview.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageview.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170)
        ])
    }
}
