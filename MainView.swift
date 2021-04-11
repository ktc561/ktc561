//
//  MainView.swift
//  Urgent Services
//
//  Created by MacBook Pro on 4/10/21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var accountCreation: AccountCreationViewModel
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        VStack {
            Image("Mech")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame( height: UIScreen.main.bounds.height / 3.5)
                .padding(.vertical)
                .foregroundColor(.white)
            Text("Get Emergency Auto Services when you need them. Have a professional at the click of a button, there when you need them the most.")
                .font(.body)
                .fontWeight(.semibold)
                .padding(.vertical)
                .padding(.bottom,15)
                .padding(.horizontal)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            ZStack {
                // Login View
                
                if accountCreation.pageNumber == 0 {
                    Login()
                }
                else if accountCreation.pageNumber == 1 {
                    Register()
                        .transition(.move(edge: .trailing))
                    
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color.white.clipShape(CustomCorner(corners: [.topLeft, .topRight]))).ignoresSafeArea(.all, edges: .bottom)
            
            
            
        }
        .background(Color.black.ignoresSafeArea(.all, edges: .all))
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
