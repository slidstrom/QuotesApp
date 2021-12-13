//
//  CharacterView.swift
//  QuotesApp
//
//  Created by DSIAdmin on 12/13/21.
//

import Foundation

class Character : Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var images:[String]
    var smashAttacks:[String]
    var specialAbilities:[String]
    var colors:[String]
    var quotes:[String]
    var colorImages:[String]
    
}
