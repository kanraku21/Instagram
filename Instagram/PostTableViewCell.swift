//
//  PostTableViewCell.swift
//  Instagram
//
//  Created by tetsuya nomata on 2019/11/07.
//  Copyright © 2019 tetsuya nomata. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var tocommentButton: UIButton!
    @IBOutlet weak var commentLabel: UILabel!
    
    //  @IBAction func tocommentViewButton(_ sender: Any) {
      //  let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
//        let commentViewController = storyboard.instantiateViewController(withIdentifier: "comment")
    
//        commentViewController.present(commentViewController, animated: true, completion: nil)
    
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setPostData(_ postData: PostData) {
        self.postImageView.image = postData.image
        
        self.captionLabel.text = "\(postData.name!) : \(postData.caption!)"
        
        
        let likeNumber = postData.likes.count
        likeLabel.text = "\(likeNumber)"
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        let dateString = formatter.string(from: postData.date!)
        self.dateLabel.text = dateString
        
        if postData.isLiked {
            let buttonImage = UIImage(named: "like_exist")
            self.likeButton.setImage(buttonImage, for: .normal)
        } else {
            let buttonImage = UIImage(named: "like_none")
            self.likeButton.setImage(buttonImage, for: .normal)
        }
    }
    
    func setCommentData(_ commentData: CommentData) {
        self.commentLabel.text = "\(commentData.commentname!) : \(commentData.comment!)"
        
    }
    
}
