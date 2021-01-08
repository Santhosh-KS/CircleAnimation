//
//  CircleAnimationView.swift
//  CircleAnimation
//
//  Created by Santhosh K S on 08/01/21.
//

import SwiftUI

struct CircleAnimationView: View {
  @State private var moveInOut: Bool = false
  @State private var rotateInOut: Bool = false
  @State private var scaleInOut: Bool = false
  
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)).fill().ignoresSafeArea()
      ZStack {
        //MARK:- Circle Set-1
        ZStack {
          MyCircle(startPoint: .bottom, endPoint: .top, colors: [.red, .green]).offset(y: moveInOut ? -60 : 0)
          MyCircle(startPoint: .bottom, endPoint: .top, colors: [.red, .white]).offset(y: moveInOut ? 60 : 0)
        }.opacity(0.5)
        
        //MARK:- Circle Set-2
        ZStack {
          MyCircle(startPoint: .bottom, endPoint: .top, colors: [.blue, .red]).offset(y: moveInOut ? -60 : 0)
          MyCircle(startPoint: .bottom, endPoint: .top, colors: [.blue, .white]).offset(y: moveInOut ? 60 : 0)
        }.opacity(0.5)
        .rotationEffect(.degrees(60))
        
        //MARK:- Circle Set-3
        ZStack {
          MyCircle(startPoint: .bottom, endPoint: .top, colors: [.yellow, .white]).offset(y: moveInOut ? -60 : 0)
          MyCircle(startPoint: .bottom, endPoint: .top, colors: [.yellow, .white]).offset(y: moveInOut ? 60 : 0)
        }.opacity(0.5)
        .rotationEffect(.degrees(120))
      }
      .rotationEffect(.degrees(moveInOut ? 90 : .zero))
      .scaleEffect(scaleInOut ? 1 : 1/4)
      .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8))
      .onAppear {
        moveInOut.toggle()
        scaleInOut.toggle()
        rotateInOut.toggle()
      }
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    CircleAnimationView()
  }
}
