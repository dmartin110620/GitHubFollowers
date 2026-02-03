//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 2/3/26.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
