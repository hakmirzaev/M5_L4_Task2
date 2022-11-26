//
//  HomeScreen.swift
//  M5_L4_Task2
//
//  Created by Bekhruz Hakmirzaev on 26/11/22.
//

import SwiftUI

struct HomeScreen: View, BindingData {
    
    @State var showPushing = false
    @State var data = "No data"
    
    func onReceived(value: String) {
        data = value
    }
    
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    showPushing.toggle()
                }, label: {
                    Text("Screen Present")
                }).sheet(isPresented: $showPushing, content: {
                    PushingScreen(data: "PDP", delegate: self)
                })
                Text("\(data)").padding()
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
