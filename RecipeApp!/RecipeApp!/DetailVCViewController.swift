//
//  DetailVCViewController.swift
//  RecipeApp!
//
//  Created by srk on 27/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class DetailVCViewController: UIViewController {
    
    
    @IBOutlet weak var desclbl: UILabel!
    
    @IBOutlet weak var detailimage: UIImageView!

    @IBOutlet weak var detaillbl: UILabel!
    
    var image = UIImage()
    var lbl = ""
    var desc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Details"
        detaillbl.text = lbl
        detailimage.image = image
        desclbl.text = desc
        
    }
}
