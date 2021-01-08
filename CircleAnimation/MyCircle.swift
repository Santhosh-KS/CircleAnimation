//
//  MyCircle.swift
//  CircleAnimation
//
//  Created by Santhosh K S on 08/01/21.
//

import SwiftUI

struct MyCircle: View {
  
  var linearGradient:LinearGradient
  var frameWidth: CGFloat
  var frameHeight: CGFloat
  var alignment:Alignment
  
  init(linearGradient lg:LinearGradient = LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom), frameWidth fw:CGFloat = 120, frameHeight fh:CGFloat = 120, alignment almnt:Alignment = .center) {
    linearGradient = lg
    frameWidth = fw
    frameHeight = fh
    alignment = almnt
  }
  
  init(startPoint sp:UnitPoint, endPoint ep:UnitPoint, colors col:[Color]) {
    linearGradient = LinearGradient(gradient: Gradient(colors: col), startPoint: sp, endPoint: ep)
    frameWidth = 120
    frameHeight = 120
    alignment = .center
  }
  
  var body: some View {
    Circle().fill(linearGradient)
      .frame(width: frameWidth, height: frameHeight, alignment: alignment)
  }
  
}
