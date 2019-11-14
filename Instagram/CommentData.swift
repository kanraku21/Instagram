//
//  CommentData.swift
//  Instagram
//
//  Created by tetsuya nomata on 2019/11/14.
//  Copyright © 2019 tetsuya nomata. All rights reserved.
//

import UIKit
import Firebase

class CommentData: NSObject {
    var id: String?
    
    var commentname: String?
    var comment: String?
    
    init(snapshot: DataSnapshot, myId: String) {
        self.id = snapshot.key
        
        let commentDictionary = snapshot.value as! [String: Any]
        
        self.commentname = commentDictionary["commentname"] as? String
        
        self.comment = commentDictionary["comment"] as? String
        
    }
}
