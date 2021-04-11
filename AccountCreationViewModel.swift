//
//  AccountCreationViewModel.swift
//  Urgent Services
//
//  Created by MacBook Pro on 4/10/21.
//

import SwiftUI

class AccountCreationViewModel: ObservableObject {
    //user details
    @Published var name = ""
    @Published var bio = ""
    @Published var age = ""
    @Published var location = ""
    // login details
    
    @Published var phNumber = ""
    @Published var code = ""
    
    //ref For View Changing
    //ie login to register to image upload
    
    @Published var pageNumber = 0
    
    func login() {
        
        pageNumber = 1
        
    }
    
}

public struct PlaceholderStyle: ViewModifier {
    var showPlaceHolder: Bool
    var placeholder: String
    var placeholderColor: Color
    
    public func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if showPlaceHolder {
                Text(placeholder)
                    .foregroundColor(placeholderColor)
            }
            
            content
        }
    }

}
