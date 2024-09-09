//
//  History.swift
//  UITutorial
//
//  Created by 박정륭 on 9/8/24.
//

import Foundation


struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    
    init(id: UUID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee]) {
         self.id = id
         self.date = date
         self.attendees = attendees
     }
}

