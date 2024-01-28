//
//  SecondView1.swift
//  EnvirnmentObjectSample2
//
//  Created by MsMacM on 2024/01/28.
//

import SwiftUI

struct SecondView1: View {
    @EnvironmentObject var fruits: Fruits

    var body: some View {
        VStack {
            Text("SecondViewです。")
                .padding()
            Text("\(fruits.name)は\(fruits.price)円です。")
        }
    }
}

#Preview {
    SecondView1()
        .environmentObject(Fruits())
}
