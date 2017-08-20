//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Donovan Prostrollo on 8/20/17.
//  Copyright © 2017 Donovan Prostrollo. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            emojiDefinitionLabel.text = "A happy smiling face"
        } else if emoji == "💩" {
            emojiDefinitionLabel.text = "Look, a smiling poo emoji"
        } else if emoji == "🏎" {
            emojiDefinitionLabel.text = "Racecar sponsored by Swift"
        } else if emoji == "⛪️" {
            emojiDefinitionLabel.text = "Time to go to church"
        } else if emoji == "🍎" {
            emojiDefinitionLabel.text = "An apple a day..."
        } else if emoji == "🥑" {
            emojiDefinitionLabel.text = "A nice ripe Avacado"
        } else if emoji == "🐶" {
            emojiDefinitionLabel.text = "Aw, a cute puppy"
        } else if emoji == "🙏🏻" {
            emojiDefinitionLabel.text = "Time to be thankful"
        } else if emoji == "🕍" {
            emojiDefinitionLabel.text = "Time to go to synagouge"
        }

    }

}
