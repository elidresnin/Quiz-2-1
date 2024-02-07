//
//  ContentView.swift
//  Quiz 2-1
//
//  Created by Eli Dresnin (student LM) on 12/4/23.
//

import SwiftUI

struct ContentView: View {
    @State var image = "forest"
    @State var text = "Good Morning"
    var body: some View {
        ZStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Button{
                    if (text == "Good Morning") {
                        text = "Good Night"
                    }
                    else if (text == "Good Night") {
                        text = "Good Morning"
                    }
                    
                } label: {
                    Text("change text")
                        .frame(width: 150.0, height: 50.0)
                        .background()
                        .cornerRadius(45)
                
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
