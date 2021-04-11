//
//  Login.swift
//  Urgent Services
//
//  Created by MacBook Pro on 4/10/21.
//

import SwiftUI
struct Login: View {
    @EnvironmentObject var accountCreation : AccountCreationViewModel
    
    var body: some View {
        
        
        VStack{
            
            Text("Login")
                .font(.largeTitle)
                .foregroundColor(.black)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,25)
                .padding(25)
            HStack(spacing: 15){
                
                TextField("", text: $accountCreation.code)
                    .modifier(
                        PlaceholderStyle(
                            showPlaceHolder: accountCreation.code.isEmpty,
                            placeholder: "+1",
                            placeholderColor: Color.black.opacity(0.75)
                        )
                    )
                    
                    .frame(width: 60)
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
                
                
                TextField("", text: $accountCreation.phNumber)
                    .modifier(
                        PlaceholderStyle(
                            showPlaceHolder: accountCreation.phNumber.isEmpty,
                            placeholder: "Mobile Number",
                            placeholderColor: Color.black.opacity(0.75)
                        )
                    )
                    
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
                
            }
            .padding(.horizontal)
            .padding(.top)
            
            
            Button(action: accountCreation.login, label: {
                HStack{
                    Spacer()
                    
                    Text("Login")
                    
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .padding(.vertical)
                .padding(.horizontal)
                .background(Color(.red))
                .cornerRadius(8.0)
            })
            .padding(.top)
            .padding(.vertical)
            .padding(.horizontal, 30)
            
            
        }
    }
    
    struct Login_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
