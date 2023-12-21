//
//  ContentView.swift
//  Camera-Test
//
//  Created by user on 2023/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isCameraPresented = false

    var body: some View {
        VStack {
            Text("Top画面です")
            Button(action:{
                print("押されました")
            })
            {
                Text("Pushボタン")
            }.padding()
            Button(action: {
                isCameraPresented = true
            }) {
                Text("カメラを起動")
            }
            .sheet(isPresented: $isCameraPresented) {
                CameraView()
            }
           
        }
    }
}

#Preview(traits: PreviewTrait.landscapeLeft) {
    ContentView()
}
