import SwiftUI

struct ContentView: View{
    var body: some View{
        VStack{
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.blue)
            Text("Javed Ansari IOS developer")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .padding()
        
    }
}

struct MeetingView: View{
    var body: some View{
        VStack {
            ProgressView(value: 2, total: 15)
               
            HStack{
                VStack(alignment:.leading) {
                    Text("seconds elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment:.trailing) {
                    Text("seconds remaining")
                        .font(.caption)
                    Label("600",systemImage: "hourglass.bottomhalf.fill")
                }

            }
//            .background(.blue)
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 10)
                .padding(20)
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next Speaker")
            }
        }
        .padding()
            
    }
}




struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
