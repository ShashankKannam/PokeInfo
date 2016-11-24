//
//  pokeCellCollectionViewCell.swift
//  PokeInfo
//
//  Created by shashank kannam on 11/22/16.
//  Copyright © 2016 shashank kannam. All rights reserved.
//

import UIKit

class pokeCellCollectionViewCell: UICollectionViewCell {
  
    @IBOutlet weak var pokemonImage:UIImageView!
    @IBOutlet weak var pokemonName:UILabel!
    
    var pokemon:Pokemon!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 8.0
    }
    
    
    func configurecell(_ pokemon:Pokemon){
        self.pokemon = pokemon
        self.pokemonImage.image = UIImage(named: "\(pokemon.pokedexID)")
        self.pokemonName.text = pokemon.name.capitalized
        
    }
}

