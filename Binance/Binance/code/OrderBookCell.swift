//
//  OrderBookCell.swift
//  Binance
//
//  Created by TZSH on 2020/2/28.
//  Copyright © 2020 TZSH. All rights reserved.
//

import UIKit

class OrderBookCell: UITableViewCell {

    var data: ((Array<String>, Array<String>))? {
        didSet{
            guard let d = data else {
                return
            }
            let b0 = d.0[0]
            let b1 = d.0[1]
            let a0 = d.1[0]
            let a1 = d.1[1]
            bid_mount.text = b1
            bid_price.text = b0
            ask_mount.text = a0
            ask_price.text = a1
        }
    }
    
    @IBOutlet weak var bid_mount: UILabel!
    @IBOutlet weak var bid_price: UILabel!
    @IBOutlet weak var ask_price: UILabel!
    @IBOutlet weak var ask_mount: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
