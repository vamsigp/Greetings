//
//  ContentView.swift
//  Greetings
//
//  Created by Vamsi Krishna G P on 10/01/25.
//

import SwiftUI

struct ContentView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Hello there!", bgColor: Color.green),
        .init(text: "Welcome to Swift Programming", bgColor: Color.gray),
        .init(text: "Are u ready to", bgColor: Color.yellow),
        .init(text: "start exploring", bgColor: Color.red),
        .init(text: "Boom22", bgColor: Color.purple)
    ]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            VStack (alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Exploring iOS")
                    .font(.headline)
                    .fontWeight(.thin)
            }
        
            Spacer()
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, bgColor: dataItem.bgColor)
            }
            
            Spacer()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
