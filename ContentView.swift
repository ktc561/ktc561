//
//  ContentView.swift
//  Urgent Services
//
//  Created by MacBook Pro on 4/10/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var accountCreation = AccountCreationViewModel()
    
    var body: some View {
        
        
       MainView()
        //setting it as environment Object
        //so that we can use it in All the sub views
        .environmentObject(accountCreation)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
