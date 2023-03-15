//
//  DetailsViewController.swift
//  NETFLIX2
//
//  Created by ifts 25 on 12/02/23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    @IBOutlet weak var guardaBtn: UIButton!
    
    var recievedMovie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guardaBtn.layer.cornerRadius = 20
        
        movieImage.image = UIImage(named: recievedMovie?.image ?? "")
        movieNameLabel.text = recievedMovie?.name
        categoryLabel.text = recievedMovie?.category
        yearLabel.text = String(recievedMovie?.year ?? 0)
        durationLabel.text = recievedMovie?.duration
        
        descriptionLabel.text = recievedMovie?.description
    }

}
