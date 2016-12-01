//
//  PokemonInfoViewController.swift
//  PokeInfo
//
//  Created by shashank kannam on 11/30/16.
//  Copyright © 2016 shashank kannam. All rights reserved.
//

import UIKit

class PokemonInfoViewController: UIViewController {

    var pokemon:Pokemon!
    
    
    @IBOutlet weak var pokemonName: UILabel!
    
    @IBOutlet weak var mainImg: UIImageView!
    
    @IBOutlet weak var descriptionLBL: UILabel!
    
    @IBOutlet weak var typeLBL: UILabel!
    
    
    @IBOutlet weak var defenseLBL: UILabel!
    
    @IBOutlet weak var heightLBL: UILabel!
    
    
    @IBOutlet weak var idLBL: UILabel!
    
    @IBOutlet weak var weightLBL: UILabel!
    
    @IBOutlet weak var baseAttackLBL: UILabel!
    
    @IBOutlet weak var nxtEvlLBL: UILabel!
    
    @IBOutlet weak var image1LBL: UIImageView!
    
    @IBOutlet weak var image2LBL: UIImageView!
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        pokemon.downloadComplete { 
            self.updateUI()
        }
        
        // Do any additional setup after loading the view.
    }

    func updateUI(){
         pokemonName.text = pokemon.name.capitalized
         descriptionLBL.text = pokemon.description
         typeLBL.text = pokemon.type
        heightLBL.text = pokemon.height
        weightLBL.text = pokemon.weight
        baseAttackLBL.text = String(pokemon.attack)
        defenseLBL.text = String(pokemon.defense)
        mainImg.image = UIImage(named: "\(pokemon.pokedexID)")
        image1LBL.image = UIImage(named: "\(pokemon.pokedexID)")
       // descriptionLBL.text = pokemon.description
        
        if pokemon.nextEvolutionId == "" {
            
            nxtEvlLBL.text = "No Evolutions"
            image2LBL.isHidden = true
            
        } else {
            
            image1LBL.isHidden = false
            image2LBL.image = UIImage(named: pokemon.nextEvolutionId)
            let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
            nxtEvlLBL.text = str
        }

        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
