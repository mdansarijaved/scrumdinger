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
            ProgressView(value: 10, total: 15)
                .padding(30)
            HStack{
                VStack {
                    Text("javed sabka baap hai")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                VStack {
                    Text("javed sabka baap hai")
                    Label("600",systemImage: "hourglass.bottomhalf.fill")
                }

            }
        }
            
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
