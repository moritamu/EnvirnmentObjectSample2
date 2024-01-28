//
//  ContentView.swift
//  EnvirnmentObjectSample2
//
//  Created by MsMacM on 2024/01/27.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var fruits: Fruits
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(fruits.name) １個 \(fruits.price) 円です。")
                    .font(.title2)
                    .padding()
                Button("50円値上げする。") {
                    fruits.price += 50
                }
                .padding()
                NavigationLink {
                    SecondView1()
                } label: {
                    Text("ScondViewへ遷移")
                }
                .navigationTitle("価格設定")
                .font(.title)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Fruits())
    
}
