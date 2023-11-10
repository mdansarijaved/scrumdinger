//
//  CardView.swift
//  scrumdinger
//
//  Created by Javed Ansari on 10/11/23.
//

import SwiftUI

struct CardView : View{
    let scrum: DailyScrum
    var body: some View{
        VStack (alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            HStack{
                Label("\(scrum.attendees.count)",systemImage: "person.3")
            }
        }
    }
}

struct CardView_Previews: PreviewProvider{
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View{
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
