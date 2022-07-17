//
//  PieceView.swift
//  SandBox
//
//  Created by onakama on 2022/07/16.
//

import SwiftUI

struct PieceView: View {
    
    @State var color: Color = Color.clear
    
    var body: some View {
        ZStack() {
            Image("onakama")
                .resizable()
            Rectangle()
                .stroke(lineWidth: 1)
                .fill(color)
        }
    }
}

struct PieceView_Previews: PreviewProvider {
    static var previews: some View {
        PieceView()
    }
}
