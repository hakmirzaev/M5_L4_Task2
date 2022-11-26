//
//  PushingScreen.swift
//  M5_L4_Task2
//
//  Created by Bekhruz Hakmirzaev on 26/11/22.
//

import SwiftUI

struct PushingScreen: View {
    @Environment(\.presentationMode) var presentation
    @State var data = ""
    var delegate: BindingData?
    var body: some View {
        VStack{
            Button(action: {
                presentation.wrappedValue.dismiss()
                delegate?.onReceived(value: "Online")
            }, label: {
                Text("Back to Home")
            })
            Text("\(data)").padding()
        }
        
    }
}

struct PushingScreen_Previews: PreviewProvider {
    static var previews: some View {
        PushingScreen()
    }
}
