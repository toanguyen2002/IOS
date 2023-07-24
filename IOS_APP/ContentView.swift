//
//  ContentView.swift
//  IOS_APP
//
//  Created by Nguyễn Quang Toán on 23/07/2023.
//

import SwiftUI

enum Emoji : String, CaseIterable{
    case 😃,😀,😄,😁,🥰,🙃,😅,😉,😋,🤪,😎,🥳,🤩,🥸,🫥,🫡,🤫,🫠,😬,😦,😲,😮‍💨
}


struct ContentView: View {
    @State var selection : Emoji = .😀
    var body: some View {
        VStack {
            //            Image(systemName: "globe")
            //                .imageScale(.large)
            //                .foregroundColor(.accentColor)
            //            Text("Hello, world!")
            //        }
            //        .padding()
            
            Text(selection.rawValue)
                .font(.system(size: 100))
            
            
            Picker("selection Emoji", selection: $selection){
                ForEach(Emoji.allCases, id: \.self){
                    emoji in Text(emoji.rawValue)
                }
            }.pickerStyle(.automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
     
    }
}
