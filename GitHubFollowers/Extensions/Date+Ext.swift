//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/26/26.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
    
}
