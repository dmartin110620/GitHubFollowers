//
//  Constants.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/23/26.
//

import UIKit


enum SFSymbols {
    static let location     = "location.fill"
    static let repos        = "folder.fill"
    static let gists        = "doc.on.doc.fill"
    static let following    = "person.2.fill"
    static let followers    = "heart.fill"
}


enum Images {
    static let ghLogo       = UIImage(named: "gh-logo")
}


enum ScreenSize {
    static let width        = UIScreen.current?.bounds.width
    static let height       = UIScreen.current?.bounds.height
    static let maxLength    = max(ScreenSize.width!, ScreenSize.height!)
    static let minLength    = min(ScreenSize.width!, ScreenSize.height!)
}


enum DeviceType {
    static let idiom        = UIDevice.current.userInterfaceIdiom
    static let scale        = UIScreen().scale
    static let nativeScale  = UIScreen().nativeScale
    
    static let isiPhoneSE2  = idiom == .phone && ScreenSize.maxLength == 667
}
