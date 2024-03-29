//
//  DetailViewController.swift
//  Project1
//
//  Created by Yuryi Ustinovich on 14.08.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var imageIndex: Int?
    var imagesCount: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(selectedImage ?? "") (\(imageIndex! + 1) of \(imagesCount!))"
        
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
