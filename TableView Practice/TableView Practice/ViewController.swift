//
//  ViewController.swift
//  TableView Practice
//
//  Created by Edmund Holderbaum on 2/27/17.
//  Copyright © 2017 Dawn Trigger Entertainment. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var hasBeenRead: [Alphabets:Bool] = [:]
    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Alphabets.allAlpha.forEach({hasBeenRead[$0] = false})
        print (hasBeenRead)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        table.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Alphabets.allAlpha.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlphaCell", for: indexPath) as! AlphaCell
        let myAlphabet = Alphabets.allAlpha[indexPath.row]
        let wasRead = hasBeenRead[myAlphabet] ?? false
        cell.alphabetLabel.text = myAlphabet.description
        cell.alphabetButton.setTitle(myAlphabet.letters[3], for: .normal)
        cell.readLabel.isHidden = !wasRead
        cell.alphabetButton.tag = indexPath.row
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "SegueToAlphabet" else {return}
        let destination = segue.destination as! AlphaDisplay
        let origin = sender as! UIButton
        destination.delegate = self
        print(origin.tag)
        destination.alphabetToDisplay = Alphabets.allAlpha[origin.tag]
    }
}

class AlphaCell: UITableViewCell{
    
    @IBOutlet weak var alphabetLabel: UILabel!
    @IBOutlet weak var alphabetButton: UIButton!
    @IBOutlet weak var readLabel: UILabel!
}

