//
//  DragGestureView.swift
//  SandBox
//
//  Created by onakama on 2022/07/16.
//

import SwiftUI

struct DragGestureView: View {
    
    @State var position: CGSize = CGSize(width: 200, height: 300)
    
    var drag: some Gesture {
            DragGesture()
            .onChanged{ value in
                self.position = CGSize(
                    width: value.startLocation.x
                        + value.translation.width,
                    height: value.startLocation.y
                        + value.translation.height
                )
            }
            .onEnded{ value in
                self.position = CGSize(
                    width: value.startLocation.x
                        + value.translation.width,
                    height: value.startLocation.y
                        + value.translation.height
                )
            }
            
        }
    
    var body: some View {
        VStack {
            Text("x: \(position.width)")
            Text("y: \(position.height)")
            Image("onakama")
                .position(x: position.width, y: position.height)
                .gesture(drag)
        }
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
