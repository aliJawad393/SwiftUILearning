

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading) {
                Text("Covid-19")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .font(.title2)
                    .padding()
                    .background(Color(.purple))
                
                HStack {
                    Spacer()
                    Image("corona_alert")
                        .resizable()
                        .frame(maxWidth: geo.size.width / 4, maxHeight: geo.size.width / 4)
                        .padding()
                    
                    Spacer()
                }.padding()
                
                BottomView().padding()
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity,
                           alignment: .topLeading)
                    .background(Color(.purple))

            }.frame(minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .topLeading)
            .background(Color(.white))
        }.background(Color(.purple).edgesIgnoringSafeArea(.vertical))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max", "iPad (8th generation)"], id: \.self) { deviceName in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

//MARK: Bottom View

fileprivate struct BottomView: View {
    private let contentText: String = "The coronavirus, or COVID-19, is inciting panic for a number of reasons. It's a new virus, meaning no one has immunity, and there is no vaccine. Its novelty means that scientists aren't sure yet how it behaves they have little history to go on."

    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    Spacer()
                    Image("alert")
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Be Safe!")
                        .foregroundColor(.white)
                        .font(.headline)
                    Spacer()
                }
                
                Text(contentText)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button("Got it") {
                        print("Close button tapped")
                    }
                    .frame(minWidth: geo.size.width * 0.6, maxWidth: geo.size.width * 0.745)
                    .padding(.vertical, geo.size.height * 0.02)
                    .foregroundColor(.white)
                    .background(Color(.black))
                    .font(.title3)
                    .cornerRadius(5)
                    
                    Spacer()
                }
            }
        }
    }
}
