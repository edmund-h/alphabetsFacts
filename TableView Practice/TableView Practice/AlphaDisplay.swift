//
//  AlphaDisplay.swift
//  TableView Practice
//
//  Created by Edmund Holderbaum on 2/27/17.
//  Copyright © 2017 Dawn Trigger Entertainment. All rights reserved.
//

import UIKit

class AlphaDisplay: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var delegate: ViewController?
    var alphabetToDisplay: Alphabets!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.title = alphabetToDisplay.description
        infoLabel.text = alphabetToDisplay.info
        infoLabel.lineBreakMode = .byWordWrapping
        infoLabel.numberOfLines = 0
        if let myDelegate = delegate {
            myDelegate.hasBeenRead[alphabetToDisplay] = true
        } //informs ViewController that language info has been read
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return alphabetToDisplay.letters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! letterCell
        cell.letterLabel.textColor = UIColor.white
        cell.letterLabel.text = alphabetToDisplay.letters[indexPath.item]
        return cell
    }//loads cells with letters ordinally and formats text
}

class letterCell: UICollectionViewCell {
    @IBOutlet weak var letterLabel: UILabel!
    
}
