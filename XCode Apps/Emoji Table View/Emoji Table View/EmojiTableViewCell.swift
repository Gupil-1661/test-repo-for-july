//
//  EmojiTableViewCell.swift
//  Emoji Table View
//
//  Created by Gupil  on 22/08/25.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        updateUI(emoji: Emoji)
        // Initialization code
    }

    func updateUI(emoji: Emoji) {
        emojiLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
