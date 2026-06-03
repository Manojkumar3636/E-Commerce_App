//
//  GesturesView.swift
//  FashionApp
//
//  Created by sham kumar s on 09/03/26.
//

import SwiftUI

struct GesturesView: View {
    @State private var isAnimating: Bool = false
    @State var offSetValue: CGSize = .zero
    @State var angle: Angle = .zero
    @State var scaleValue: CGFloat = 1.0
    @State var gestureState: Bool = false
    var body: some View {
        VStack {
            //                        Circle()
            //                            .fill(.blue)
            //                            .frame(width: 140)
            //                            .onTapGesture(count: 2) {
            //                                isAnimating.toggle()
            //                            }
            //
            //
            //                        Rectangle()
            //                            .frame(width: 200, height: 200)
            //                            .scaleEffect(isAnimating ? 1.0 : 0)
            //                            .animation(.easeIn(duration: 1)
            //                                .repeatCount(2, autoreverses: true), value: isAnimating)
            
            //            Circle()
            //                .frame(width: 120)
            //                .offset(offSetValue)
            //                .gesture(
            //                    DragGesture()
            //                        .onChanged({ value in
            //                            offSetValue = value.translation
            //                        })
            //                        .onEnded({ _ in
            //
            //                        })
            //                )
            //
            //            Rectangle()
            //                .frame(width: 150, height: 150)
            //                .rotationEffect(angle)
            //                .gesture(
            //                    RotationGesture()
            //                        .onEnded({ value in
            //                            angle = value
            //                        })
            //                )
            
            //            Rectangle()
            //                .fill(gestureState ? .blue : .green)
            //                .frame(width: 150, height: 150)
            //                .gesture(
            //                   LongPressGesture(minimumDuration: 3)
            //                    .onEnded({ _ in
            //                        gestureState.toggle()
            //                    })
            //                )
            //
            //            Rectangle()
            //                .frame(width: 150, height: 150)
            //                .scaleEffect(scaleValue)
            //                .gesture(
            //                    MagnificationGesture()
            //                        .onChanged({ value in
            //                            scaleValue = value
            //                        })
            //                        .onEnded({ _ in
            //                            scaleValue = 1
            //                        })
            //                )
            
            
            Rectangle()
                .frame(width: 150, height: 150)
                .gesture(
                    TapGesture()
                        .onEnded({ _ in
                            
                        })
                )
            
        }
    }
}

struct GesturesView_Previews: PreviewProvider {
    static var previews: some View {
        GesturesView()
    }
}
