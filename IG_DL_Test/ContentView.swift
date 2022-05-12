//
//  ContentView.swift
//  IG_DL_Test
//
//  Created by Andrea Salvatore on 12/05/2022.
//

import SwiftUI
import UIKit
import WebKit

struct ContentView: View {
    let url = URL(string: "https://metamask.app.link/google.com")!
    let url2 = URL(string: "dapp://google.com")!

    var body: some View {
        Button("Open Deep Link 1") {
            UIApplication.shared.open(url)
        }
        
        VStack(alignment: .leading) {
            Link("Open Deep Link 2", destination: url)
                .foregroundColor(.blue)
        }

        VStack(alignment: .leading) {
            Link("Open Deep Link 3", destination: url2)
                .foregroundColor(.blue)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
