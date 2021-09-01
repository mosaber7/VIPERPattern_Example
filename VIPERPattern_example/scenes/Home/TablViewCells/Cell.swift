//
//  Cell.swift
//  VIPERPattern_example
//
//  Created by Saber on 01/09/2021.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override  func awakeFromNib() {
        super.awakeFromNib()
        setupImageView()
    }
    
    private func setupImageView(){
        userImageView.backgroundColor = .black
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
    }
}
