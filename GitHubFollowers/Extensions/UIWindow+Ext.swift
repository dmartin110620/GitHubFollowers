//
//  UIWindow+Ext.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/30/26.
//

import UIKit

//@MainActor
extension UIWindow {
    static var current: UIWindow? {
        for scene in UIApplication.shared.connectedScenes {
            guard let windowScene = scene as? UIWindowScene else { continue }
            for window in windowScene.windows {
                if window.isKeyWindow { return window }
            }
        }
        return nil
    }
}

//@MainActor
extension UIScreen {
    static var current: UIScreen? {
        UIWindow.current?.screen
    }
}
