//
//  ContentView.swift
//  QuotesApp
//
//  Created by DSIAdmin on 12/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = characterModel()
    
    var body: some View {
        NavigationView {
            List(model.characters){ character in
                NavigationLink(destination: CharacterView(character: character)) {
                    
                    HStack {
                        Image(character.images[0])
                        Text(character.name).font(.headline).multilineTextAlignment(.center)
                    }
                    
                }
                
            }.navigationTitle("Character Select")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
