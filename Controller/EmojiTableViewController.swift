//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Donovan Prostrollo on 8/19/17.
//  Copyright © 2017 Donovan Prostrollo. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.emojiCategory)"
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😀"
        smiley.emojiDefinition = "A happy smiling face"
        smiley.emojiCreationDate = 2013
        smiley.emojiCategory = "Faces"
        
        let poo = Emoji()
        poo.theEmoji = "💩"
        poo.emojiDefinition = "Look, a smiling poo emoji"
        poo.emojiCreationDate = 2016
        poo.emojiCategory = "Misc"
        
        let racecar = Emoji()
        racecar.theEmoji = "🏎"
        racecar.emojiDefinition = "Racecar sponsored by Swift"
        racecar.emojiCreationDate = 2015
        racecar.emojiCategory = "Transportation"
        
        let church = Emoji()
        church.theEmoji = "⛪️"
        church.emojiDefinition = "Time to go to church"
        church.emojiCreationDate = 2011
        church.emojiCategory = "Buildings"
        
        let apple = Emoji()
        apple.theEmoji = "🍎"
        apple.emojiDefinition = "An apple a day..."
        apple.emojiCreationDate = 2011
        apple.emojiCategory = "Food"
        
        let avacado = Emoji()
        avacado.theEmoji = "🥑"
        avacado.emojiDefinition = "A nice ripe Avacado"
        avacado.emojiCreationDate = 2017
        avacado.emojiCategory = "Food"
        
        let puppy = Emoji()
        puppy.theEmoji = "🐶"
        puppy.emojiDefinition = "Aw, a cute puppy"
        puppy.emojiCreationDate = 2012
        puppy.emojiCategory = "Animal"
        
        let thankful = Emoji()
        thankful.theEmoji = "🙏🏻"
        thankful.emojiDefinition = "Time to be thankful"
        thankful.emojiCreationDate = 2014
        thankful.emojiCategory = "People"
        
        let synagouge = Emoji()
        synagouge.theEmoji = "🕍"
        synagouge.emojiDefinition = "Time to go to synagouge"
        synagouge.emojiCreationDate = 2011
        synagouge.emojiCategory = "Building"
        
        return [smiley, poo, racecar, church, apple, avacado, puppy, thankful, synagouge]
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
}
