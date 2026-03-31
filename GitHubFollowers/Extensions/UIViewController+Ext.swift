//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/7/26.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        // Throw onto the main thread
        let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle  = .overFullScreen
        alertVC.modalTransitionStyle    = .crossDissolve
        present(alertVC, animated: true)
    }
    
    
    func presentDefaultError() {
        // Throw onto the main thread
        let alertVC = GFAlertVC(title: "Something Went Wrong",
                                message: "We were unable to complete your task at this time. Pleas try again.",
                                buttonTitle: "OK")
        alertVC.modalPresentationStyle  = .overFullScreen
        alertVC.modalTransitionStyle    = .crossDissolve
        present(alertVC, animated: true)
    }
    
    
    func  presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
}
