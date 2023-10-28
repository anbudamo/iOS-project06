//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Abby Damodaran on 10/20/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post: Post!

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Configure the textview

        // Remove HTM tags from the caption string
        textView.text = post.caption.trimHTMLTags()

        // MARK: - Configure the image views
        
        if let photo = post.photos.first {
            let imageUrl = photo.originalSize.url
            
            // Load the photo in the image view via Nuke library
            Nuke.loadImage(with: imageUrl, into: imageView)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
