//
//  ViewController.swift
//  KakaoProfile
//
//  Created by Hochang Lee on 2021/01/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        self.profileImage.layer.cornerRadius = self.profileImage.frame.width * 0.45
        self.nameLabel.text = "David"
        self.nameLabel.textAlignment = NSTextAlignment.center
        self.nameLabel.textColor = UIColor.white
        self.nameLabel.backgroundColor = UIColor.clear
        self.descriptionLabel.text = "행복 멀리 없다!"
        self.descriptionLabel.textAlignment = NSTextAlignment.center
        self.descriptionLabel.textColor = UIColor.secondarySystemBackground
    }

    @IBAction func editButtonTouched(_ sender: Any) {
        self.nameLabel.textColor = UIColor.blue
        self.nameLabel.backgroundColor = UIColor.yellow
        self.nameLabel.alpha = 0.5
        self.descriptionLabel.text = "크루미션"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? EditViewController {
            destination.nameText = self.nameLabel.text ?? ""
            destination.descriptionText = self.descriptionLabel.text ?? ""
            destination.profileImageBefore = self.profileImage
        }
    }
}

