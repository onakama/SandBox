//
//  CellView.swift
//  SandBox
//
//  Created by onakama on 2022/07/16.
//

import SwiftUI

struct CellView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.green)               // 図形の塗りつぶしに使うViewを指定
                //.frame(width:140, height: 140)  // フレームサイズ指定
            Rectangle()
                .stroke(lineWidth: 1)
                .fill(Color.black)               // 図形の塗りつぶしに使うViewを指定
                //.frame(width:150, height: 150)  // フレームサイズ指定
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView()
    }
}
