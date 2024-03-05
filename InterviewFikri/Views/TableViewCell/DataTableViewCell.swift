//
//  DataTableViewCell.swift
//  InterviewFikri
//
//  Created by Fikri Ihsan on 05/03/24.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    static let identifierCell = "DataTableViewCell"
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func nib()-> UINib{
        return UINib(nibName: identifierCell, bundle: nil)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
