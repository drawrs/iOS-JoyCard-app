//
//  ViewController.swift
//  JoyCardApp
//
//  Created by Rizal Hilman on 20/03/20.
//  Copyright © 2020 Rizal Hilman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // DROP YOUR OUTLET HERE!
    @IBOutlet weak var viewCardContainer: UIView!
    @IBOutlet weak var imageFunnyFace: UIImageView!
    @IBOutlet weak var buttonRandomizeCard: UIButton!
    
    // MARK: Array of images & colors
    var joyImages = [UIImage(named: "JoyFace1"), UIImage(named: "JoyFace2"), UIImage(named: "JoyFace3")]
    var joyColors = [UIColor.systemYellow, UIColor.systemBlue, UIColor.systemGreen,  UIColor.systemRed]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // MARK: Modify object corner radious to make it rounded
        viewCardContainer.layer.cornerRadius = 30
        buttonRandomizeCard.layer.cornerRadius = 10
        
    }
    
    // DROP YOUR ACTION HERE
    @IBAction func buttonRandomizeCardTapped(_ sender: Any) {
        //Your code here!
        
        // MARK: Randomize the array item position
        joyImages.shuffle()
        joyColors.shuffle()
        
        // MARK: Get the first item then apply to the views
        // Note: The First item will alawys change when user tap the button
        imageFunnyFace.image = joyImages[0]
        view.backgroundColor = joyColors[0]
    }
    
    
}

