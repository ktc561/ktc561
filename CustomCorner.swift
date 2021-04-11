//
//  CustomCorner.swift
//  Urgent Services
//
//  Created by MacBook Pro on 4/10/21.
//

import SwiftUI

struct CustomCorner: Shape {
    var corners : UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 30, height: 30))
        return Path(path.cgPath)
        
    }
}
