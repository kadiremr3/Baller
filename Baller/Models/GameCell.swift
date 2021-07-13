//
//  EventCell.swift
//  Baller
//
//  Created by Kadir Emre on 11.07.2021.
//

import UIKit
import MapKit

class GameCell: UITableViewCell {
  
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var distanceLabel: UILabel!
    @IBOutlet var informationImageView: UIImageView!
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var mapView: MKMapView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundImageView.layer.cornerRadius = 30
       mapView.layer.cornerRadius = 30
        informationImageView.layer.cornerRadius = 30
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
