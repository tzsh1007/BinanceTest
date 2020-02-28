//
//  MarketHistoryCell.swift
//  Binance
//
//  Created by TZSH on 2020/2/28.
//  Copyright © 2020 TZSH. All rights reserved.
//

import UIKit

class MarketHistoryCell: UITableViewCell {

    @IBOutlet weak var t: UILabel!
    @IBOutlet weak var p: UILabel!
    @IBOutlet weak var q: UILabel!
    
    var df = DateFormatter()
    
    var data: Dictionary<String, Any>? {
        didSet{
            guard let d = data else {
                return
            }
            let timeSta:TimeInterval = TimeInterval((d["T"] as? Int ?? 0) / 1000)
            let date = NSDate(timeIntervalSince1970: timeSta)
            t.text = df.string(from: date as Date)
            p.text = d["p"] as! String
            q.text = d["q"] as! String
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        df.dateFormat="HH:mm:ss"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
