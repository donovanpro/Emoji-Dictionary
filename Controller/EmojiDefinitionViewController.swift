//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Donovan Prostrollo on 8/20/17.
//  Copyright © 2017 Donovan Prostrollo. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var creationLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.emojiDefinition
        categoryLabel.text = "Category: \(emoji.emojiCategory)"
        creationLabel.text = "Released: \(emoji.emojiCreationDate)"

    }

}
