//
//  MeetingTimerView.swift
//  Scrumdinger
//
//  Created by 강동영 on 12/1/24.
//

import SwiftUI

struct MeetingTimerView: View {
    let speakers: [ScrumTimer.Speaker]
    let theme: Theme
    
    private var currentSpeaker: String {
        speakers.first(where: { !$0.isCompleted })?.name ?? "Someone"
    }
    
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                VStack {
                    Text(currentSpeaker)
                        .font(.title)
                    Text("is Speaking")
                }
                .accessibilityElement(children: .combine)
                .foregroundStyle(theme.accentColor)
            }
    }
}

//#Preview {
//    MeetingTimerView()
//}

#Preview(traits: .sizeThatFitsLayout) {
    MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
}

