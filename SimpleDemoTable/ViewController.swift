//
//  ViewController.swift
//  SimpleDemoTable
//
//  Created by Memo Figueredo on 12/25/18.
//  Copyright © 2018 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var teams:[String] = ["Atletico de Madrid","Barcelona", "Deportivo", "Eibar", "Español", "Malaga","Real Sociedad"]
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int)-> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text  = teams[indexPath.row]
        cell.imageView!.image = UIImage(named: teams[indexPath.row])!
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

