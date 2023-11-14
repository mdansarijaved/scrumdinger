//
//  DailyScrum.swift
//  scrumdinger
//
//  Created by Javed Ansari on 11/11/23.
//

import SwiftUI

struct ScrumView: View{
    @Binding var scrums : [DailyScrum]
    var body: some View{
        NavigationStack{
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)

            }
            .navigationTitle("Daily Scrums")
            .toolbar{
                Button(action: {}){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumView_Previews: PreviewProvider{
    
    static var previews: some View{
        ScrumView(scrums : .constant(DailyScrum.sampleData))
    }
}
