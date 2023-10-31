//
//  introLoad.swift
//  Test
//
//  Created by Osjk33 on 10/30/23.
//

import SwiftUI

struct introLoad: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            Login()
        } else {
            VStack {
                VStack {
                    Image(systemName: "tree.fill")
                        .font(.system(size:100))
                        .foregroundColor(.green)
                    Text("Congressional App Challenge")
                    //insert app name lmao
                        .font(Font.custom("Baskerville-Bold", size: 26))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
        
    }
}

struct introLoad_Previews: PreviewProvider {
    static var previews: some View {
        introLoad()
    }
}
