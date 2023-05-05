//
//  EditProfileVC.swift
//  Social App
//
//  Created by Osama Ramadan on 03/05/2023.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!{
        didSet{
            profileImageView.makeCircularImage()
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        
        UserAPI.getUserData(id: user.id) { userResponse in
            self.user = userResponse
            self.setupUI()
        }
        
        
        
        
    }
    
    func setupUI(){
        nameLabel.text = user.firstName + " " + user.lastName
        emailLabel.text = user.email
        phoneLabel.text = user.phone
        genderLabel.text = user.gender
        
        if let location = user.location {
            countryLabel.text = location.country! + " - " + location.city!
        }
        
        if let image = user.picture {
            profileImageView.setImageFromStringUrl(stringUrl: image)
        }
        
        
    }

}
