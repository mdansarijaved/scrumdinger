//
//  DetailView.swift
//  scrumdinger
//
//  Created by Javed Ansari on 14/11/23.
//

import SwiftUI

struct DetailView: View{
    @Binding var scrum : DailyScrum
    @State private var editingscrum = DailyScrum.emptyScrum
    
    @State private var isPresentingEditView = false
 
    var body: some View{
        List{
            Section(header: Text("Meeting Info")){
                NavigationLink(destination: MeetingView() ){
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                .navigationTitle(scrum.title)
                .toolbar {
                    Button("Edit"){
                        isPresentingEditView = true
                        editingscrum = scrum
                    }
                }
                .sheet(isPresented: $isPresentingEditView) {
                    NavigationStack{
                        DetailEditView(scrum: $editingscrum)
                            .navigationTitle(scrum.title)
                            .toolbar{
                                ToolbarItem(placement: .cancellationAction){
                                    Button("Cancel"){
                                        isPresentingEditView = false
                                    }
                              
                                }
                                ToolbarItem(placement: .confirmationAction){
                                        Button("Done") {
                                            isPresentingEditView = false
                                            scrum = editingscrum
                                        }
                                    }
                            }
                    }
                }
                HStack{
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) Minutes")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees){attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        
     
        
    }
}



struct DetailView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            DetailView(scrum: .constant(DailyScrum.sampleData[0]))
        }
     
    }
}
