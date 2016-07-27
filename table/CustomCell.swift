//
//  CustomCell.swift
//  
//
//  Created by Suriya on 7/18/16.
//
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var status: UILabel!
    @IBOutlet var name: UILabel!
    
    @IBOutlet var photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
       // do {
        sharedPref.sharedInstance.data = self.name.text!
        //}catch{
            
            //print("error cell selected")
        //}
    }

}
