//
//  CellDetail.swift
//  HellaCollectionCells
//
//  Created by Douglas Galante on 10/9/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

class CellDetail: UIViewController  {
    
    
    @IBOutlet weak var number: UILabel!
    var numberVar: String = ""
    var background =  UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number.text = numberVar
        self.view.backgroundColor = background
    }
}

