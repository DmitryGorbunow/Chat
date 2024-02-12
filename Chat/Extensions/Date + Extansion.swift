//
//  Date + Extansion.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/9/24.
//

import Foundation

extension Date {
    
    func getTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm" 
        return dateFormatter.string(from: self)
    }
    
    func formattedDateString(forHeader: Bool = false) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = forHeader ? "E, MMM d" : "MM/dd/yy"
        return dateFormatter.string(from: self)
    }

    func daysBetween(date: Date) -> Int {
        let calendar = Calendar.current
        let
        datel = calendar.startOfDay (for: self)
        let date2 = calendar.startOfDay(for: date)
        if let daysBetween = calendar.dateComponents([.day], from: datel, to: date2).day {
            return daysBetween
        }
        return 0
    }
}
