//
//  GobGobView.swift
//  SandBox
//
//  Created by onakama on 2022/07/16.
//

import SwiftUI

struct GobGobView: View {
    
    @State var orangeFocus: [Bool] = [false,false,false,false,false,false]
    @State var blueFocus: [Bool] = [false,false,false,false,false,false]
    @State var pieceList: [PieceView?] = [nil,nil,nil,nil,nil,nil,nil,nil,nil]
    
    func focusRefresh() {
        for i in 0..<6 {
            orangeFocus[i] = false
            blueFocus[i] = false
        }
    }
    
    private let threeColumnGrid = [
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0),
    ]
    
    var body: some View {
        VStack {
            HStack() {
                ForEach(0..<6) { num in
                    ZStack() {
                        Button(action: {
                            focusRefresh()
                            self.orangeFocus[num] = true
                        } ) {
                            PieceView()
                        }
                        if orangeFocus[num] {
                            Color.orange
                        }
                    }
                    .frame(width: 50, height: 50)
                }
            }
            
            LazyVGrid(columns: threeColumnGrid, spacing: 0) {
                ForEach(0..<9) { num in
                    ZStack() {
                        Button(action: {
                            self.pieceList[num] = PieceView()
                        }) {
                            ZStack {
                                CellView()
                                    .aspectRatio(1, contentMode: .fill)
                                if pieceList[num] != nil {
                                    pieceList[num]
                                        .frame(width: 10, height: 10)
                                }
                            }
                        }
                        
                    }
                }
            }
            HStack() {
                ForEach(0..<6) { num in
                    ZStack() {
                        Button(action: {
                            focusRefresh()
                            self.orangeFocus[num] = true
                        } ) {
                            PieceView()
                        }
                        if orangeFocus[num] {
                            Color.orange
                        }
                    }
                    .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct GobGobView_Previews: PreviewProvider {
    static var previews: some View {
        GobGobView()
    }
}

