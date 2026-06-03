//
//  AnimationsView.swift
//  FashionApp
//
//  Created by sham kumar s on 09/03/26.
//

import SwiftUI

struct AnimationsView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .trailing, spacing: 80) {
                
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: isAnimating ? 50 : 100, height: 100)
                    .offset(x: isAnimating ? 200 : 0)
                    .animation(.linear, value: isAnimating)
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: isAnimating ? 20 : 100, height: 100)
                    .offset(x: isAnimating ? 250 : 0)
                    .animation(.easeIn(duration: 0.5), value: isAnimating)
                    .disabled(isAnimating)
//                    .scaleEffect(isAnimating ? 1.5 : 1.0)
////                    .rotationEffect(.degrees( isAnimating ? 180 : 0))
////
//                Rectangle()
//                    .foregroundColor(.black)
//                    .frame(width: isAnimating ? 20 : 100, height: 100)
//                    .offset(x: isAnimating ? 200 : 0)
//                    .animation(.easeOut(duration: 2), value: isAnimating)
//
//                Rectangle()
//                    .foregroundColor(.blue)
//                    .frame(width: isAnimating ? 20 : 100, height: 100)
//                    .offset(x: isAnimating ? 200 : 0)
//                    .animation(.easeInOut(duration: 2), value: isAnimating)
//
                
//                Circle()
//                    .foregroundColor(.yellow)
//                    .frame(width: 100)
//                    .scaleEffect(isAnimating ? 1.5 : 1.0)
//
//                Ellipse()
//                    .foregroundColor(.green)
//                    .frame(width: 200, height: 100)
//                    .rotationEffect(.degrees(isAnimating ? 360 : 0))
//
//                Capsule()
//                    .foregroundColor(.cyan)
//                    .frame(width: 300, height: 100)
//                    .rotationEffect(.degrees(isAnimating ? 720 : 0))
                            
                Button {
//                    withAnimation {
                    withAnimation(.interactiveSpring(response: 0.8)) {
                        isAnimating.toggle()
                    }
                } label: {
                    Text("Animate")
                }
            }
//            Spacer()
        }
        .onAppear {
            isAnimating = true
        }
    }
}

struct AnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsView()
    }
}
