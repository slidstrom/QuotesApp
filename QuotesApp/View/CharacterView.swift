//
//  CharacterView.swift
//  QuotesApp
//
//  Created by DSIAdmin on 12/13/21.
//

import SwiftUI

struct CharacterView: View {
    
    var character:Character
    
    var body: some View {
        
        // Scroll View
        ScrollView{
            VStack{
                Text(character.name).font(.title)
                
                // Display Character Image
                Image(character.images[1]).resizable().scaledToFit().padding()
                Divider()
                
                // Display Smash Attacks
                VStack {
                    Text("Smash Attacks").font(.headline).padding(.bottom)
                    
                    ForEach(character.smashAttacks, id: \.self){ attack in
                        Text("- " + attack).padding([.leading, .bottom]).font(.subheadline)
                    }
                }
                Divider()
                VStack{
                    Text("Special Attacks").font(.headline).padding(.bottom)
                    
                    ForEach(character.specialAbilities, id: \.self){ attack in
                        Text("- " + attack).padding([.leading, .bottom]).font(.subheadline)
                        
                    }
                }
                Divider()
                VStack{
                    Text("Colors").font(.headline).padding(.bottom)
                    
                    
                    HStack {
                        VStack {
                            ForEach(character.colors, id: \.self){ color in
                                Spacer()
                                Text("- " + color)
                                Spacer()
                            }
                        }
                        VStack {
                            ForEach(character.colorImages, id: \.self){ image in
                                Image(image)
                                
                            }
                        }
                    }
                }.padding(.bottom)
                Divider()
                VStack{
                    Text("Quotes").font(.headline).padding(.bottom)
                    
                    ForEach(character.quotes, id: \.self){ quote in
                        Text("- " + quote).padding([.leading, .bottom]).font(.subheadline)
                        
                    }
                }

                
            }
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        let model = characterModel()
        
        CharacterView(character: model.characters[0])
    }
}
