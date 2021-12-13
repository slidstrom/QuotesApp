//
//  CharacterModel.swift
//  QuotesApp
//
//  Created by DSIAdmin on 12/13/21.
//

import Foundation

class characterModel : ObservableObject {
    
    @Published var characters = [Character]()
    
    init(){
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            let url = URL.init(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do{
                    let characterData = try decoder.decode([Character].self, from: data)
                    
                    for character in characterData {
                        character.id = UUID()
                    }
                    
                    self.characters = characterData
                    
                } catch {
                    print(error)
                }
            } catch{
                print(error)
            }
        }
    }
}
