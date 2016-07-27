//
//  ViewController.swift
//  table
//
//  Created by Suriya on 7/18/16.
//  Copyright (c) 2016 MST. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    
    let people=[
        "Nizam",
        "Jamal",
        "Mansoor","Nizam",
        "Jamal",
        "Mansoor","Nizam",
        "Jamal",
        "Mansoor","Nizam",
        "Jamal",
        "Mansoor"
    ]
    
    let status=["online","busy","offline","online","busy","offline","online","busy","offline","online","busy","offline"]
    
    let image=[UIImage(named:"nizam"),UIImage(named:"jamal"),UIImage(named:"mansoor"),UIImage(named:"nizam"),UIImage(named:"jamal"),UIImage(named:"mansoor"),UIImage(named:"nizam"),UIImage(named:"jamal"),UIImage(named:"mansoor"),UIImage(named:"nizam"),UIImage(named:"jamal"),UIImage(named:"mansoor")]
    
    
    @IBOutlet var tableView: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        
        cell.name.text = people[indexPath.row]
        cell.status.text = status[indexPath.row]
        cell.photo.image = image[indexPath.row]
        
        return cell
    }
}

