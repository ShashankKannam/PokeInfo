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

        pokemonName.text = pokemon.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
