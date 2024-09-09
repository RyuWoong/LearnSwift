//
//  CardView.swift
//  UITutorial
//
//  Created by 박정륭 on 9/6/24.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .background(scrum.theme.mainColor)
    }
}

#Preview(traits:.fixedLayout(width: 400, height: 60) ) {
    var scrum = DailyScrum.sampleData[0]
    
    return CardView(scrum: scrum)
    
}
