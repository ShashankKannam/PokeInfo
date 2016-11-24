//
//  ViewController.swift
//  PokeInfo
//
//  Created by shashank kannam on 11/20/16.
//  Copyright © 2016 shashank kannam. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection:UICollectionView!
    
    var pokemons = [Pokemon]()
    var musicPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
        parseCSV()
        playMusic()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func playMusic(){
      let path = Bundle.main.path(forResource: "music", ofType: "mp3")
        do{
             musicPlayer = try AVAudioPlayer(contentsOf: URL(string:path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.numberOfLoops = -1
            musicPlayer.play()
        }catch let err as NSError{
            print(err.debugDescription)
        }
    }
    
    func parseCSV(){
        let path = Bundle.main.path(forResource: "pokemon", ofType: "csv")
        do{
            let csv = try CSV(contentsOfURL: path!)
            let rows = csv.rows
           // print(rows)
            
            for row in rows{
                let id = Int(row["id"]!)!
                let name = row["identifier"]!
                let pokemon = Pokemon(name: name, pokedexID: id)
                pokemons.append(pokemon)
            }
            
        }catch let err as NSError{
            print(err.debugDescription)
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokemonCell", for: indexPath) as? pokeCellCollectionViewCell{
            let poke = pokemons[indexPath.row]
            cell.configurecell(poke)
            return cell
        }
        else{
           return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemons.count
    }

    
    @IBAction func musicBtn(_ sender: UIButton) {
        if musicPlayer.isPlaying{
            musicPlayer.pause()
            sender.alpha = 0.2
            
        }else{
            musicPlayer.play()
            sender.alpha = 1.0
        }
    }
    
}

